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
    output wire [95:0]           out_ts_96,
    output wire [15:0]           out_sequence_id,
    output wire [3:0]            out_msg_type,
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

    // Unpack read payload
    wire [DATA_WIDTH-1:0] rd_data = mem[rd_ptr];
    assign out_ts_96       = rd_data[115:20];
    assign out_sequence_id = rd_data[19:4];
    assign out_msg_type    = rd_data[3:0];

    // Status Flags
    assign fifo_empty = (fifo_count == 0);
    assign fifo_full  = (fifo_count == FIFO_DEPTH);

    // Synchronous Write & Read Logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr     <= 0;
            rd_ptr     <= 0;
            fifo_count <= 0;
        end else begin
            // Enqueue on valid trigger if FIFO is not full
            if (ptp_valid && !fifo_full) begin
                mem[wr_ptr] <= wr_data;
                wr_ptr      <= wr_ptr + 1'b1;
            end

            // Dequeue on host read request if FIFO is not empty
            if (rd_en && !fifo_empty) begin
                rd_ptr <= rd_ptr + 1'b1;
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
