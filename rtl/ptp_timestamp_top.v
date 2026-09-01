`timescale 1ns / 1ps

module ptp_timestamp_top (
    input  wire        clk,
    input  wire        rst,

    // Configuration / Adjustment
    input  wire [7:0]  period_ns,
    input  wire [15:0] period_fns,

    // XGMII Snoop Interface
    input  wire [63:0] xgmii_txd,
    input  wire [7:0]  xgmii_txc,

    // FIFO Host Read Interface
    input  wire        rd_en,
    output wire [95:0] out_ts_96,
    output wire [15:0] out_sequence_id,
    output wire [3:0]  out_msg_type,
    output wire        fifo_empty,
    output wire        fifo_full
);

    wire        ptp_valid;
    wire [15:0] ptp_sequence_id;
    wire [3:0]  ptp_msg_type;
    wire [95:0] ptp_ts_96;

    // 1. Real-Time Counter
    ptp_rtc rtc_inst (
        .clk(clk),
        .rst(rst),
        .period_ns(period_ns),
        .period_fns(period_fns),
        .adj_valid(1'b0),
        .adj_ns(8'd0),
        .adj_fns(16'd0),
        .adj_count_neg(1'b0),
        .ptp_ts_96_sec(),
        .ptp_ts_96_ns(),
        .ptp_ts_96_fns(),
        .ptp_ts_96(ptp_ts_96)
    );

    // 2. In-Line Parser
    ptp_parser_xgmii_64 parser_inst (
        .clk(clk),
        .rst(rst),
        .xgmii_txd(xgmii_txd),
        .xgmii_txc(xgmii_txc),
        .ptp_valid(ptp_valid),
        .ptp_sequence_id(ptp_sequence_id),
        .ptp_msg_type(ptp_msg_type)
    );

    // 3. Sideband FIFO
    ptp_ts_fifo fifo_inst (
        .clk(clk),
        .rst(rst),
        .ptp_valid(ptp_valid),
        .ptp_sequence_id(ptp_sequence_id),
        .ptp_msg_type(ptp_msg_type),
        .ptp_ts_96(ptp_ts_96),
        .rd_en(rd_en),
        .out_ts_96(out_ts_96),
        .out_sequence_id(out_sequence_id),
        .out_msg_type(out_msg_type),
        .fifo_empty(fifo_empty),
        .fifo_full(fifo_full)
    );

endmodule
