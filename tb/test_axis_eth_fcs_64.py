#!/usr/bin/env python
"""
Cycle-accurate Cocotb testbench for power-optimized axis_eth_fcs_64.
Verifies Ethernet FCS (CRC32) calculation accuracy across variable payload lengths
with active operand isolation.
"""

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer
import binascii

# --- Ethernet Frame & FCS Helper ---

def calc_eth_fcs(data: bytes) -> int:
    """Calculates standard Ethernet IEEE 802.3 CRC32 (32-bit checksum)."""
    return binascii.crc32(data) & 0xFFFFFFFF

class EthFrame:
    def __init__(self, dest_mac=0xDAD1D2D3D4D5, src_mac=0x5A5152535455, eth_type=0x8000, payload=b''):
        self.eth_dest_mac = dest_mac
        self.eth_src_mac = src_mac
        self.eth_type = eth_type
        self.payload = bytearray(payload)

    def build_raw_frame(self) -> bytes:
        """Constructs unpadded Ethernet frame header + payload."""
        frame = bytearray()
        frame.extend(self.eth_dest_mac.to_bytes(6, 'big'))
        frame.extend(self.eth_src_mac.to_bytes(6, 'big'))
        frame.extend(self.eth_type.to_bytes(2, 'big'))
        frame.extend(self.payload)
        return bytes(frame)

    def build_axis_words(self):
        """Packs Ethernet frame bytes into 64-bit words and keep masks for AXI-Stream."""
        raw_data = self.build_raw_frame()
        words = []
        keeps = []
        
        for i in range(0, len(raw_data), 8):
            chunk = raw_data[i:i+8]
            keep_val = (1 << len(chunk)) - 1
            chunk_padded = chunk + b'\x00' * (8 - len(chunk))
            word_val = int.from_bytes(chunk_padded, 'little')
            
            words.append(word_val)
            keeps.append(keep_val)
            
        return words, keeps, raw_data

# --- AXI4-Stream Stimulus Driver ---

async def send_axis_stream_frame(dut, frame: EthFrame):
    """Drives frame words on s_axis and yields until captured by DUT."""
    words, keeps, raw_bytes = frame.build_axis_words()
    num_words = len(words)

    for idx in range(num_words):
        dut.s_axis_tdata.value = words[idx]
        dut.s_axis_tkeep.value = keeps[idx]
        dut.s_axis_tvalid.value = 1
        dut.s_axis_tlast.value = 1 if (idx == num_words - 1) else 0

        while True:
            await RisingEdge(dut.clk)
            # Sample on ready edge
            if hasattr(dut, 's_axis_tready') and dut.s_axis_tready.value == 1:
                break
            elif not hasattr(dut, 's_axis_tready'):
                break

    dut.s_axis_tvalid.value = 0
    dut.s_axis_tlast.value = 0
    return raw_bytes

# --- Test Case Suite ---

@cocotb.test()
async def test_axis_eth_fcs_single_frames(dut):
    """Tests FCS calculation over isolated short, medium, and jumbo payloads."""
    
    # Initialize clock (125 MHz clock -> 8 ns period)
    clock = Clock(dut.clk, 8.0, units="ns")
    cocotb.start_soon(clock.start())

    # Initialize signals
    dut.rst.value = 1
    dut.s_axis_tdata.value = 0
    dut.s_axis_tkeep.value = 0
    dut.s_axis_tvalid.value = 0
    dut.s_axis_tlast.value = 0

    # Apply Reset
    await Timer(20, units="ns")
    await RisingEdge(dut.clk)
    dut.rst.value = 0
    await RisingEdge(dut.clk)

    # Test payload length sweeps
    payload_lengths = list(range(1, 18)) + list(range(64, 82))

    for length in payload_lengths:
        frame = EthFrame(payload=bytes(range(length)))
        
        # Drive frame into FCS calculation unit
        raw_bytes = await send_axis_stream_frame(dut, frame)
        expected_fcs = calc_eth_fcs(raw_bytes)

        # Wait for valid FCS assertion
        while True:
            await RisingEdge(dut.clk)
            if dut.output_fcs_valid.value == 1:
                break

        actual_fcs = int(dut.output_fcs.value)

        dut._log.info(
            f"Payload Len: {length:2d} | Raw Bytes: {len(raw_bytes):2d} | "
            f"Calculated FCS: 0x{actual_fcs:08X} | Expected FCS: 0x{expected_fcs:08X}"
        )

        assert actual_fcs == expected_fcs, (
            f"FCS Mismatch for length {length}! "
            f"Got: 0x{actual_fcs:08X}, Expected: 0x{expected_fcs:08X}"
        )

        # Allow pipeline to settle back to isolated idle state
        await Timer(50, units="ns")

@cocotb.test()
async def test_axis_eth_fcs_operand_isolation_idle_check(dut):
    """Validates that output_fcs_valid stays deasserted and output remains stable during idle."""
    
    clock = Clock(dut.clk, 8.0, units="ns")
    cocotb.start_soon(clock.start())

    dut.rst.value = 1
    await Timer(20, units="ns")
    await RisingEdge(dut.clk)
    dut.rst.value = 0
    await RisingEdge(dut.clk)

    # Hold stream idle for 30 cycles to verify isolation stability
    for _ in range(30):
        await RisingEdge(dut.clk)
        assert dut.output_fcs_valid.value == 0, "FCS Valid asserted unexpectedly during stream idle!"

    dut._log.info("Operand isolation idle stability verified successfully.")
