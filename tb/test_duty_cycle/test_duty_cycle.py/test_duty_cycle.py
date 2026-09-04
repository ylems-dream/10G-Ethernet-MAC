#!/usr/bin/env python
"""
test_duty_cycle.py

Item 1.1 in the low-power verification checklist. Three independent test
groups against eth_mac_10g_fifo (top level, so the dynamic clock gating
(gated_tx_clk/gated_rx_clk via icg_cell) and the PTP timestamp datapath are
both exercised together):

  A. run_test_duty_cycle_*   -- Dynamic power under varying duty cycles.
     Drives traffic at 100% / 50% / 10% active duty cycle by toggling
     cfg_tx_enable between bursts, and measures gated_tx_clk switching
     activity (rising-edge count) relative to the free-running tx_clk
     reference over the same window, as a functional-simulation proxy for
     dynamic power (no gate-level power tool is available here -- this
     measures how much of the time the gated clock tree is actually
     toggling, which is the first-order driver of dynamic power in a
     clock-gated design).

  B. run_test_ptp_operand_isolation -- PTP timestamp capture register
     should not toggle on frames that don't request a timestamp.

  C. run_test_gate_wake_latency -- First-word latency (tx_axis_tvalid ->
     SFD on xgmii_txd) after waking from a gated/idle window must match
     the steady-state (already-running) latency, i.e. the ICG adds no
     extra pipeline cycles.

Note on scenario C: this is a *functional* zero-delay RTL simulation.
It can prove the ICG's enable latch adds no extra *cycles* of latency.
It cannot prove anything about real silicon setup/hold margin at the
latch -- that requires STA on the synthesized netlist, not simulation.
"""

import logging

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Edge, Timer, First, Event
from cocotb.utils import get_time_from_sim_steps, get_sim_time
from cocotb.regression import TestFactory

from cocotbext.eth import XgmiiFrame, XgmiiSink, PtpClockSimTime
from cocotbext.axi import AxiStreamBus, AxiStreamSource, AxiStreamFrame
from cocotbext.axi.stream import define_stream


PtpTsBus, PtpTsTransaction, PtpTsSource, PtpTsSink, PtpTsMonitor = define_stream("PtpTs",
    signals=["ts_96", "ts_valid"],
    optional_signals=["ts_tag", "ts_ready"]
)


class TB:
    def __init__(self, dut):
        self.dut = dut

        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        self.clk_period = 6.4 if len(dut.xgmii_txd) == 64 else 3.2

        cocotb.start_soon(Clock(dut.logic_clk, self.clk_period, units="ns").start())
        cocotb.start_soon(Clock(dut.rx_clk, self.clk_period, units="ns").start())
        cocotb.start_soon(Clock(dut.tx_clk, self.clk_period, units="ns").start())
        cocotb.start_soon(Clock(dut.ptp_sample_clk, 9.9, units="ns").start())

        self.xgmii_sink = XgmiiSink(dut.xgmii_txd, dut.xgmii_txc, dut.tx_clk, dut.tx_rst)

        self.axis_source = AxiStreamSource(AxiStreamBus.from_prefix(dut, "tx_axis"), dut.logic_clk, dut.logic_rst)

        self.ptp_clock = PtpClockSimTime(ts_tod=dut.ptp_ts_96, clock=dut.logic_clk)
        # NOTE: bound to the real post-FIFO output port (m_axis_tx_ptp_*), not the
        # internal pre-FIFO wire -- see the eth_mac_10g_fifo PTP fix notes.
        self.tx_ptp_ts_sink = PtpTsSink(PtpTsBus.from_prefix(dut, "m_axis_tx_ptp"), dut.logic_clk, dut.logic_rst)

        dut.ptp_ts_step.setimmediatevalue(0)

        dut.cfg_ifg.setimmediatevalue(0)
        dut.cfg_tx_enable.setimmediatevalue(0)
        dut.cfg_rx_enable.setimmediatevalue(0)

    async def reset(self):
        self.dut.logic_rst.setimmediatevalue(0)
        self.dut.rx_rst.setimmediatevalue(0)
        self.dut.tx_rst.setimmediatevalue(0)
        await RisingEdge(self.dut.logic_clk)
        await RisingEdge(self.dut.logic_clk)
        self.dut.logic_rst.value = 1
        self.dut.rx_rst.value = 1
        self.dut.tx_rst.value = 1
        await RisingEdge(self.dut.logic_clk)
        await RisingEdge(self.dut.logic_clk)
        self.dut.logic_rst.value = 0
        self.dut.rx_rst.value = 0
        self.dut.tx_rst.value = 0
        await RisingEdge(self.dut.logic_clk)
        await RisingEdge(self.dut.logic_clk)

    async def wait_ptp_lock(self):
        self.log.info("Wait for PTP CDC lock")
        while not self.dut.tx_ptp.tx_ptp_cdc.locked.value.integer:
            await RisingEdge(self.dut.tx_clk)
        for k in range(1000):
            await RisingEdge(self.dut.tx_clk)

    async def send_burst(self, count, length=256, tuser=2):
        """Send `count` back-to-back frames of `length` bytes and wait for them to drain."""
        for i in range(count):
            data = bytes([x % 256 for x in range(length)])
            await self.axis_source.send(AxiStreamFrame(data, tuser=tuser))
        for i in range(count):
            await self.xgmii_sink.recv()
            if tuser & 2:
                await self.tx_ptp_ts_sink.recv()


async def count_edges_for(signal, duration_ns):
    """Count rising edges of `signal` over a fixed simulated duration.

    Uses First(RisingEdge, done) each iteration so a signal that never
    toggles during the window (e.g. a fully gated clock) correctly reports
    zero instead of hanging.
    """
    count = 0
    done = Event()

    async def _timer():
        await Timer(duration_ns, units="ns")
        done.set()

    cocotb.start_soon(_timer())

    while not done.is_set():
        await First(RisingEdge(signal), done.wait())
        if not done.is_set():
            count += 1

    return count


async def count_value_changes_for(signal, duration_ns):
    """Same as count_edges_for but for any-value-change (Edge) on a bus signal."""
    count = 0
    done = Event()

    async def _timer():
        await Timer(duration_ns, units="ns")
        done.set()

    cocotb.start_soon(_timer())

    while not done.is_set():
        await First(Edge(signal), done.wait())
        if not done.is_set():
            count += 1

    return count


# ---------------------------------------------------------------------------
# A. Dynamic power under varying duty cycles
# ---------------------------------------------------------------------------

async def run_test_duty_cycle(dut, duty_pct=100, window_ns=10000, active_ns=1000):
    """
    duty_pct is informational/for logging; the actual active/idle split is
    driven by active_ns and (window_ns - active_ns) repeated until window_ns
    total simulated time has elapsed.

      100%: active_ns == window_ns -> cfg_tx_enable held high throughout,
            no idle windows at all.
       50%: 1us active / 1us idle, repeated.
       10%: 1us active / 9us idle, repeated.
    """
    tb = TB(dut)
    tb.dut.cfg_ifg.value = 12
    await tb.reset()
    tb.dut.cfg_tx_enable.value = 1
    await tb.wait_ptp_lock()

    idle_ns = window_ns - active_ns

    async def traffic_loop():
        elapsed = 0
        while elapsed < window_ns * 5:  # run several repeats of the pattern
            tb.dut.cfg_tx_enable.value = 1
            await tb.send_burst(4, length=256)
            elapsed += active_ns
            if idle_ns > 0:
                tb.dut.cfg_tx_enable.value = 0
                await Timer(idle_ns, units="ns")
                elapsed += idle_ns

    traffic_task = cocotb.start_soon(traffic_loop())

    # Measure switching activity over a fixed observation window that spans
    # several active/idle repeats.
    observe_ns = window_ns * 4
    gated_count, ref_count = await _combine(
        count_edges_for(dut.gated_tx_clk, observe_ns),
        count_edges_for(dut.tx_clk, observe_ns),
    )

    ratio = gated_count / ref_count
    tb.log.info("Duty cycle %d%%: gated_tx_clk edges=%d, tx_clk edges=%d, activity ratio=%.3f",
                duty_pct, gated_count, ref_count, ratio)

    traffic_task.kill()

    return ratio


async def _combine(coro_a, coro_b):
    """Run two coroutines concurrently to completion and return both results."""
    task_a = cocotb.start_soon(coro_a)
    task_b = cocotb.start_soon(coro_b)
    result_a = await task_a.join()
    result_b = await task_b.join()
    return result_a, result_b


@cocotb.test()
async def run_test_duty_cycle_100(dut):
    ratio_100 = await run_test_duty_cycle(dut, duty_pct=100, window_ns=10000, active_ns=10000)
    assert ratio_100 > 0.9, "100% duty cycle should keep gated_tx_clk toggling almost every cycle"


@cocotb.test()
async def run_test_duty_cycle_50(dut):
    ratio_50 = await run_test_duty_cycle(dut, duty_pct=50, window_ns=2000, active_ns=1000)
    assert 0.3 < ratio_50 < 0.85, \
        f"50% duty cycle activity ratio {ratio_50:.3f} outside expected band"


@cocotb.test()
async def run_test_duty_cycle_10(dut):
    ratio_10 = await run_test_duty_cycle(dut, duty_pct=10, window_ns=10000, active_ns=1000)
    assert ratio_10 < 0.35, \
        f"10% duty cycle activity ratio {ratio_10:.3f} too high -- clock gating not saving power at low duty"


@cocotb.test()
async def run_test_duty_cycle_ordering(dut):
    """Sanity check: activity ratio must decrease monotonically as duty cycle drops."""
    r100 = await run_test_duty_cycle(dut, duty_pct=100, window_ns=4000, active_ns=4000)
    r50 = await run_test_duty_cycle(dut, duty_pct=50, window_ns=2000, active_ns=1000)
    r10 = await run_test_duty_cycle(dut, duty_pct=10, window_ns=4000, active_ns=400)
    dut._log.info("Ratios: 100%%=%.3f 50%%=%.3f 10%%=%.3f", r100, r50, r10)
    assert r100 > r50 > r10, "activity ratio must drop monotonically as duty cycle decreases"


# ---------------------------------------------------------------------------
# B. PTP timestamp unit operand isolation
# ---------------------------------------------------------------------------

@cocotb.test()
async def run_test_ptp_operand_isolation(dut):
    tb = TB(dut)
    tb.dut.cfg_ifg.value = 12
    await tb.reset()
    tb.dut.cfg_tx_enable.value = 1
    await tb.wait_ptp_lock()

    # axis_xgmii_tx_inst lives inside an unlabeled `generate if (DATA_WIDTH == 64)`
    # block in eth_mac_10g.v, which icarus names genblk1.
    capture_reg = dut.eth_mac_10g_inst.genblk1.axis_xgmii_tx_inst.m_axis_ptp_ts_reg

    async def send_non_ptp_frames():
        # tuser=0 -> PTP_TS_CTRL_IN_TUSER bit (bit 1) is 0: this frame does
        # not request a timestamp.
        for i in range(20):
            data = bytes([x % 256 for x in range(128)])
            await tb.axis_source.send(AxiStreamFrame(data, tuser=0))
        for i in range(20):
            await tb.xgmii_sink.recv()

    send_task = cocotb.start_soon(send_non_ptp_frames())

    toggle_count = await count_value_changes_for(capture_reg, 20000)

    await send_task.join()

    tb.log.info("m_axis_ptp_ts_reg toggles during %d non-PTP frames: %d", 20, toggle_count)
    assert toggle_count == 0, (
        "PTP timestamp capture register toggled on non-PTP frames -- "
        "operand isolation missing for the timestamp capture path"
    )


# ---------------------------------------------------------------------------
# C. Gate enabling latency / IFG compliance
# ---------------------------------------------------------------------------

async def measure_first_word_latency(tb, dut, length=256):
    data = bytes([x % 256 for x in range(length)])

    t_send = get_sim_time("ns")
    send_task = cocotb.start_soon(tb.axis_source.send(AxiStreamFrame(data, tuser=2)))

    await RisingEdge(dut.tx_axis_tvalid)
    t_tvalid = get_sim_time("ns")

    rx_frame = await tb.xgmii_sink.recv()
    await tb.tx_ptp_ts_sink.recv()
    await send_task.join()

    t_sfd = get_time_from_sim_steps(rx_frame.sim_time_sfd, "ns")
    if rx_frame.start_lane == 4:
        t_sfd -= tb.clk_period / 2

    latency_ns = t_sfd - t_tvalid
    return latency_ns


@cocotb.test()
async def run_test_gate_wake_latency(dut):
    tb = TB(dut)
    tb.dut.cfg_ifg.value = 12
    await tb.reset()
    tb.dut.cfg_tx_enable.value = 1
    await tb.wait_ptp_lock()

    # Steady-state: clock has been running continuously for a while already.
    await tb.send_burst(4, length=256)
    warm_latency = await measure_first_word_latency(tb, dut)
    tb.log.info("Warm (steady-state) first-word latency: %f ns", warm_latency)

    # Now force an idle/gated window, then measure the very first frame
    # transmitted after waking the gated clock back up.
    tb.dut.cfg_tx_enable.value = 0
    await Timer(2000, units="ns")
    tb.dut.cfg_tx_enable.value = 1

    cold_latency = await measure_first_word_latency(tb, dut)
    tb.log.info("Cold (post-idle wake) first-word latency: %f ns", cold_latency)

    tb.log.info("Delta: %f ns (%.2f clk periods)",
                cold_latency - warm_latency, (cold_latency - warm_latency) / tb.clk_period)

    assert abs(cold_latency - warm_latency) < tb.clk_period, (
        f"Wake-from-idle first-word latency ({cold_latency:.2f} ns) differs from "
        f"steady-state latency ({warm_latency:.2f} ns) by more than one clock period "
        f"-- clock gating is costing extra cycles on wake"
    )
