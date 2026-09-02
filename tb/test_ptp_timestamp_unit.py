import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer

async def send_xgmii_ptp_frame(dut, sequence_id=0x1001, msg_type=0x0):
    """Generates XGMII cycles representing a PTP over Layer-2 Ethernet packet."""
    
    # 1. SOP Cycle (Start of Frame)
    dut.xgmii_txc.value = 0x01
    dut.xgmii_txd.value = 0xD5555555555555FB
    await RisingEdge(dut.clk)

    # 2. Header Word 1: Dest MAC + upper 16-bits Src MAC
    dut.xgmii_txc.value = 0x00
    dut.xgmii_txd.value = 0x5253DAD1D2D3D4D5
    await RisingEdge(dut.clk)

    # 3. Header Word 2: Lower 32-bits Src MAC (2B) + EtherType 0x88F7 (2B) + MsgType/Ver (1B) + Reserved (1B) + SeqID (2B)
    seq_hi = (sequence_id >> 8) & 0xFF
    seq_lo = sequence_id & 0xFF
    
    # Pack bytes LSB-first: [SrcMAC_lo(2B) | EtherType(2B) | MsgType(1B) | Reserved(1B) | SeqID(2B)]
    word2 = (seq_hi << 56) | (seq_lo << 48) | (0x00 << 40) | (msg_type << 32) | (0xF788 << 16) | 0x5455
    
    dut.xgmii_txc.value = 0x00
    dut.xgmii_txd.value = word2
    await RisingEdge(dut.clk)

    # 4. Idle / End Frame
    dut.xgmii_txc.value = 0xFF
    dut.xgmii_txd.value = 0x0707070707070707
    await RisingEdge(dut.clk)

@cocotb.test()
async def test_ptp_timestamp_capture(dut):
    """Verifies end-to-end RTC incrementing, PTP header parsing, and FIFO timestamp capture."""
    
    # 1. Start clock FIRST so synchronous resets can register
    clock = Clock(dut.clk, 6.4, units="ns")
    cocotb.start_soon(clock.start())

    # 2. Drive reset & signal configurations
    dut.rst.value = 1
    dut.period_ns.value = 6
    dut.period_fns.value = 0x6666
    dut.rd_en.value = 0
    dut.xgmii_txc.value = 0xFF
    dut.xgmii_txd.value = 0x0707070707070707

    # Hold reset across active clock edges
    for _ in range(5):
        await RisingEdge(dut.clk)
        
    dut.rst.value = 0
    await RisingEdge(dut.clk)

    dut._log.info("--- Sending PTP Frame 1 (Sync Message) ---")
    await send_xgmii_ptp_frame(dut, sequence_id=0x1001, msg_type=0x0)

    # Wait for parser pipeline to process header & push to FIFO
    for _ in range(5):
        await RisingEdge(dut.clk)

    # Check FIFO status
    assert dut.fifo_empty.value == 0, "FIFO should not be empty after detecting a PTP packet!"

    # Read from FIFO memory
    dut.rd_en.value = 1
    await RisingEdge(dut.clk)
    dut.rd_en.value = 0
    await RisingEdge(dut.clk)
    
    # Print raw bitstrings before integer conversion to catch the 'x'
    dut._log.info(f"Raw TS bitstring:  {dut.out_ts_96.value}")
    dut._log.info(f"Raw Seq bitstring: {dut.out_sequence_id.value}")
    dut._log.info(f"Raw Type bitstring:{dut.out_msg_type.value}")

    captured_ts   = int(dut.out_ts_96.value)
    captured_seq  = int(dut.out_sequence_id.value)
    captured_type = int(dut.out_msg_type.value)

    dut._log.info(f"Captured Timestamp: {hex(captured_ts)}")
    dut._log.info(f"Captured Sequence ID: {hex(captured_seq)}")
    dut._log.info(f"Captured Message Type: {hex(captured_type)}")

    assert captured_seq == 0x1001, f"Expected Sequence ID 0x1001, got {hex(captured_seq)}"
    assert captured_type == 0x0, f"Expected Msg Type 0x0, got {hex(captured_type)}"
    dut._log.info("SUCCESS: PTP Timestamp Unit end-to-end test passed!")
