#!/usr/bin/env python
"""
test_depth_trace.py

Records s_status_depth and m_status_depth on every single s_clk/m_clk edge
across a run of randomized traffic (fixed seed for reproducibility), and
writes the traces to a file. Used to diff against the same trace recorded
from the pristine (unmodified) axis_async_fifo.v -- if the 2.1 power
optimization (gating the depth recompute to only run when an input
actually changed) is a pure computational shortcut, the two traces must be
byte-for-byte identical: skipping a redundant recomputation of an
already-correct value can never change what that value *is*, only how
often it gets needlessly recomputed.
"""

import logging
import os
import random

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, First

from cocotbext.axi import AxiStreamBus, AxiStreamFrame, AxiStreamSource, AxiStreamSink


class TB:
    def __init__(self, dut):
        self.dut = dut
        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        cocotb.start_soon(Clock(dut.s_clk, 10, units="ns").start())
        cocotb.start_soon(Clock(dut.m_clk, 11, units="ns").start())

        self.source = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis"), dut.s_clk, dut.s_rst)
        self.sink = AxiStreamSink(AxiStreamBus.from_prefix(dut, "m_axis"), dut.m_clk, dut.m_rst)

        dut.s_pause_req.setimmediatevalue(0)
        dut.m_pause_req.setimmediatevalue(0)

    async def reset(self):
        self.dut.m_rst.setimmediatevalue(0)
        self.dut.s_rst.setimmediatevalue(0)
        for k in range(10):
            await RisingEdge(self.dut.s_clk)
        self.dut.m_rst.value = 1
        self.dut.s_rst.value = 1
        for k in range(10):
            await RisingEdge(self.dut.s_clk)
        self.dut.m_rst.value = 0
        self.dut.s_rst.value = 0
        for k in range(10):
            await RisingEdge(self.dut.s_clk)


async def recorder(dut, clk, get_value, out_list, cycles):
    for _ in range(cycles):
        await RisingEdge(clk)
        out_list.append(int(get_value()))


@cocotb.test()
async def run_test_depth_trace(dut):
    random.seed(1234)

    tb = TB(dut)
    await tb.reset()

    s_trace = []
    m_trace = []

    cycles = 4000
    s_task = cocotb.start_soon(recorder(dut, dut.s_clk, lambda: dut.s_status_depth.value.integer, s_trace, cycles))
    m_task = cocotb.start_soon(recorder(dut, dut.m_clk, lambda: dut.m_status_depth.value.integer, m_trace, cycles))

    async def traffic():
        for i in range(60):
            length = random.randint(1, 40)
            data = bytes([random.randint(0, 255) for _ in range(length)])
            await tb.source.send(AxiStreamFrame(data))
            # Mix of tight back-to-back and long idle gaps, including
            # deliberate single-then-quiet patterns for the CDC sync
            # registers on both sides.
            gap = random.choice([0, 1, 2, 5, 20, 50])
            for _ in range(gap):
                await RisingEdge(dut.s_clk)

    async def drain():
        while True:
            await tb.sink.recv()

    traffic_task = cocotb.start_soon(traffic())
    drain_task = cocotb.start_soon(drain())

    await s_task.join()
    await m_task.join()

    traffic_task.kill()
    drain_task.kill()

    out_dir = os.environ.get("DEPTH_TRACE_DIR", "/tmp")
    tag = os.environ.get("DEPTH_TRACE_TAG", "trace")

    with open(f"{out_dir}/s_depth_{tag}.txt", "w") as f:
        f.write("\n".join(str(v) for v in s_trace))
    with open(f"{out_dir}/m_depth_{tag}.txt", "w") as f:
        f.write("\n".join(str(v) for v in m_trace))

    dut._log.info("Wrote traces: s_depth_%s.txt (%d samples), m_depth_%s.txt (%d samples)",
                   tag, len(s_trace), tag, len(m_trace))
