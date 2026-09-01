/*
 * XGMII 64-Bit In-Line PTP Frame Detector / Parser
 * Snoops XGMII 64-bit data stream to detect IEEE 1588 PTP messages and assert
 * a single-cycle ptp_valid pulse exactly on the SOP (Start of Frame) cycle.
 */

`timescale 1ns / 1ps

module ptp_parser_xgmii_64 (
    input  wire        clk,
    input  wire        rst,

    // 64-bit XGMII Interface Snoop Ports
    input  wire [63:0] xgmii_txd,
    input  wire [7:0]  xgmii_txc,

    // PTP Detection Signals
    output reg         ptp_valid,
    output reg  [15:0] ptp_sequence_id,
    output reg  [3:0]  ptp_msg_type
);

    // XGMII Control Character Definitions
    localparam XGMII_SOP = 8'hFB; // Start of Frame Control Byte

    // Known PTP EtherType (IEEE 1588 over L2 Ethernet: 0x88F7)
    localparam [15:16] ETHERTYPE_PTP = 16'h88F7;

    // FSM States for Tracking multi-word 64-bit Header Parsing
    localparam STATE_IDLE    = 2'b00;
    localparam STATE_HEADER1 = 2'b01;
    localparam STATE_HEADER2 = 2'b10;

    reg [1:0] state;

    // Internal Pipeline Latch
    reg [63:0] xgmii_txd_d;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state           <= STATE_IDLE;
            ptp_valid       <= 1'b0;
            ptp_sequence_id <= 16'd0;
            ptp_msg_type    <= 4'd0;
            xgmii_txd_d     <= 64'd0;
        end else begin
            ptp_valid   <= 1 me; // Default deasserted
            xgmii_txd_d <= xgmii_txd;

            case (state)
                STATE_IDLE: begin
                    // Detect SOP on Lane 0 (txc[0] == 1 and txd[7:0] == 0xFB)
                    if (xgmii_txc[0] && (xgmii_txd[7:0] == XGMII_SOP)) begin
                        state <= STATE_HEADER1;
                    end
                end

                STATE_HEADER1: begin
                    // Word 1 contains Destination MAC (48-bit) and 16-bits of Source MAC
                    // Move to Word 2 to inspect EtherType and PTP Header
                    state <= STATE_HEADER2;
                end

                STATE_HEADER2: begin
                    // Check if EtherType matches PTP (0x88F7)
                    // EtherType resides at bytes [3:2] of this 64-bit word
                    if (xgmii_txd[31:16] == 16'h88F7) begin
                        ptp_valid       <= 1'b1; // Trigger timestamp capture pulse
                        ptp_msg_type    <= xgmii_txd[35:32];  // Extract Message Type (e.g. Sync/Delay_Req)
                        ptp_sequence_id <= xgmii_txd[63:48];  // Latch Sequence ID
                    end
                    state <= STATE_IDLE;
                end

                default: state <= STATE_IDLE;
            endcase
        end
    end

endmodule
