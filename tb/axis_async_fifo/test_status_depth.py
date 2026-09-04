#!/usr/bin/env python
"""
test_status_depth.py

Targeted regression for the 2.1 power optimization on axis_async_fifo.v's
s_status_depth/m_status_depth tracking. That change only recomputes the
gray2bin decode + subtraction when an input has actually moved, instead of
every clock cycle unconditionally -- so the specific risk to check for is a
single pointer change followed by several idle cycles: does status_depth
settle to the *correct* value and hold it, or does it get stuck one cycle
stale because the gate closed one cycle too early?

Single small frames, wide idle gaps, and depth is polled on every single
clock for many cycles after each frame -- not just once at the end -- so a
transient-then-wrong value would be caught, not just a permanently-hung one.
"""

import logging
import os

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge

from cocotbext.axi import AxiStreamBus, AxiStreamFrame, AxiStreamSource, AxiStreamSink


class TB:
    def __init__(self, dut):
        self.dut = dut
        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        s_clk = int(os.getenv("S_CLK", "10"))
        m_clk = int(os.getenv("M_CLK", "11"))

        cocotb.start_soon(Clock(dut.s_clk, s_clk, units="ns").start())
        cocotb.start_soon(Clock(dut.m_clk, m_clk, units="ns").start())

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


async def hold_and_check(dut, clk, get_depth, expected, cycles, label):
    """Poll a depth signal for `cycles` clocks, asserting it equals
    `expected` on *every single one* -- catches a value that's transiently
    right then drifts, or that never quite reaches the right value."""
    for i in range(cycles):
        await RisingEdge(clk)
        got = get_depth()
        assert got == expected, (
            f"{label}: depth stuck/wrong {cycles - i} cycles after settling -- "
            f"got {got}, expected {expected} (status depth gating bug)"
        )


@cocotb.test()
async def run_test_single_frame_settle(dut):
    """One frame, then long idle -- both sides' depth must reach the right
    value and hold it, not get stuck one cycle behind.

    m_pause_req is held high while checking write-side depth so the sink
    (which has no backpressure of its own and would otherwise start
    draining the FIFO immediately) can't move rd_ptr and disturb the
    measurement.
    """
    tb = TB(dut)
    await tb.reset()

    dut.m_pause_req.value = 1

    length = 16
    data = bytes([x % 256 for x in range(length)])

    await tb.source.send(AxiStreamFrame(data))

    # Let the write land and settle on the s_clk side. Read side is held
    # paused, so nothing should be draining yet.
    for _ in range(60):
        await RisingEdge(dut.s_clk)

    await hold_and_check(dut, dut.s_clk, lambda: dut.s_status_depth.value.integer,
                          length, 30, "s_status_depth after single write (read paused)")

    # Release the read side and let it fully drain.
    dut.m_pause_req.value = 0

    rx_frame = await tb.sink.recv()
    assert bytes(rx_frame.tdata) == data

    for _ in range(30):
        await RisingEdge(dut.m_clk)

    await hold_and_check(dut, dut.m_clk, lambda: dut.m_status_depth.value.integer,
                          0, 30, "m_status_depth after drain")

    for _ in range(30):
        await RisingEdge(dut.s_clk)

    await hold_and_check(dut, dut.s_clk, lambda: dut.s_status_depth.value.integer,
                          0, 30, "s_status_depth after drain")


@cocotb.test()
async def run_test_sparse_frames_settle(dut):
    """Several frames, each followed by a long idle gap with the read side
    paused, checking depth settles correctly after every single one --
    not just the last."""
    tb = TB(dut)
    await tb.reset()

    for i in range(6):
        dut.m_pause_req.value = 1

        length = 8 + i * 8
        data = bytes([(x + i) % 256 for x in range(length)])
        await tb.source.send(AxiStreamFrame(data))

        for _ in range(40):
            await RisingEdge(dut.s_clk)

        await hold_and_check(dut, dut.s_clk, lambda: dut.s_status_depth.value.integer,
                              length, 20, f"s_status_depth after frame {i} (read paused)")

        dut.m_pause_req.value = 0

        rx_frame = await tb.sink.recv()
        assert bytes(rx_frame.tdata) == data

        for _ in range(20):
            await RisingEdge(dut.m_clk)

        await hold_and_check(dut, dut.m_clk, lambda: dut.m_status_depth.value.integer,
                              0, 15, f"m_status_depth after draining frame {i}")

        for _ in range(20):
            await RisingEdge(dut.s_clk)

        await hold_and_check(dut, dut.s_clk, lambda: dut.s_status_depth.value.integer,
                              0, 15, f"s_status_depth after draining frame {i}")
