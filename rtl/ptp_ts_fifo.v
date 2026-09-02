/*
 * PTP Timestamp Capture & Sideband FIFO
 * Latches 96-bit RTC timestamp on ptp_valid pulse and queues metadata
 * for CPU/host readout.
 */

`timescale 1ns / 1ps

module ptp_ts_fifo #(
    parameter FIFO_DEPTH = 16,
    parameter DATA_WIDTH = 96 + 16 + 4 // [96-bit TS | 16-bit Seq ID | 4-bit Msg Type]
) (
    input  wire                  clk,
    input  wire                  rst,

    // Capture Trigger Interface (from ptp_parser)
    input  wire                  ptp_valid,
    input  wire [15:0]           ptp_sequence_id,
    input  wire [3:0]            ptp_msg_type,

    // RTC Counter Interface (from ptp_rtc)
    input  wire [95:0]           ptp_ts_96,

    // Host Readout Sideband Interface
    input  wire                  rd_en,
    output reg  [95:0]           out_ts_96,
    output reg  [15:0]           out_sequence_id,
    output reg  [3:0]            out_msg_type,
    output wire                  fifo_empty,
    output wire                  fifo_full
);

    // FIFO Pointers & Memory Array
    reg [$clog2(FIFO_DEPTH)-1:0] wr_ptr;
    reg [$clog2(FIFO_DEPTH)-1:0] rd_ptr;
    reg [$clog2(FIFO_DEPTH):0]   fifo_count;

    reg [DATA_WIDTH-1:0] mem [0:FIFO_DEPTH-1];

    // Pack write payload: {ptp_ts_96, ptp_sequence_id, ptp_msg_type}
    wire [DATA_WIDTH-1:0] wr_data = {ptp_ts_96, ptp_sequence_id, ptp_msg_type};

    // Status Flags
    assign fifo_empty = (fifo_count == 0);
    assign fifo_full  = (fifo_count == FIFO_DEPTH);

    integer i;

    // Synchronous Write, Read & Pointer Logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr          <= 0;
            rd_ptr          <= 0;
            fifo_count      <= 0;
            out_ts_96       <= 96'd0;
            out_sequence_id <= 16'd0;
            out_msg_type    <= 4'd0;
            for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
                mem[i] <= {DATA_WIDTH{1'b0}};
            end
        end else begin
            // Enqueue on valid trigger if FIFO is not full
            if (ptp_valid && !fifo_full) begin
                mem[wr_ptr] <= wr_data;
                wr_ptr      <= wr_ptr + 1'b1;
            end

            // Dequeue and output data on host read request if FIFO is not empty
            if (rd_en && !fifo_empty) begin
                out_ts_96       <= mem[rd_ptr][115:20];
                out_sequence_id <= mem[rd_ptr][19:4];
                out_msg_type    <= mem[rd_ptr][3:0];
                rd_ptr          <= rd_ptr + 1'b1;
            end

            // Track occupied depth
            case ({ (ptp_valid && !fifo_full), (rd_en && !fifo_empty) })
                2'b10: fifo_count <= fifo_count + 1'b1;
                2'b01: fifo_count <= fifo_count - 1'b1;
                default: fifo_count <= fifo_count;
            endcase
        end
    end

endmodule
