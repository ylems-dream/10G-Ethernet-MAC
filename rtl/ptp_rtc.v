/*
 * 96-Bit PTP Real-Time Counter (IEEE 1588 Real-Time Clock)
 * Supports sub-nanosecond fractional incrementing for precision timekeeping.
 */

`timescale 1ns / 1ps

module ptp_rtc #(
    // Default step for 156.25 MHz clock (6.4 ns = 6 ns + 0x6666 fractional ns)
    parameter DEFAULT_PERIOD_NS  = 8'h06,
    parameter DEFAULT_PERIOD_FNS = 16'h6666
) (
    input  wire        clk,
    input  wire        rst,

    // Step Increment Configuration (from MAC configuration registers)
    input  wire [7:0]  period_ns,
    input  wire [15:0] period_fns,

    // Time Adjustment Interface (Frequency / Phase Correction)
    input  wire        adj_valid,
    input  wire [7:0]  adj_ns,
    input  wire [15:0] adj_fns,
    input  wire        adj_count_neg, // 0 = Add step, 1 = Subtract step

    // IEEE 1588 96-bit Timestamp Output [48-bit Sec | 32-bit NS | 16-bit Sub-NS]
    output reg  [47:0] ptp_ts_96_sec,
    output reg  [31:0] ptp_ts_96_ns,
    output reg  [15:0] ptp_ts_96_fns,
    output wire [95:0] ptp_ts_96
);

    // Pack complete 96-bit timestamp (single driver only)
    assign ptp_ts_96 = {ptp_ts_96_sec, ptp_ts_96_ns, ptp_ts_96_fns};

    // Internal Step Calculations
    reg [23:0] inc_step;

    always @(*) begin
        // Apply normal increment or adjusted fine step
        if (adj_valid) begin
            if (adj_count_neg)
                inc_step = {period_ns, period_fns} - {adj_ns, adj_fns};
            else
                inc_step = {period_ns, period_fns} + {adj_ns, adj_fns};
        end else begin
            inc_step = {period_ns, period_fns};
        end
    end

    // FIX: raw_sum is a purely combinational accumulation of the CURRENT
    // register values + inc_step. Previously this sum was computed with a
    // non-blocking assignment into a self-referencing reg (next_ns) that
    // was read back in the same always block on the next line -- that read
    // always saw the PRE-edge (stale) value of next_ns, which was also
    // never reset, so it started as X and fed X back into the accumulator
    // every cycle forever. Using a combinational wire removes the race
    // entirely: both the rollover check and the register update below see
    // the exact same, fully-defined, freshly computed sum.
    wire [48:0] raw_sum     = {1'b0, ptp_ts_96_ns, ptp_ts_96_fns} + {25'b0, inc_step};
    wire [31:0] raw_next_ns = raw_sum[47:16];
    wire [15:0] raw_next_fns= raw_sum[15:0];

    // Counter Rollover Logic & Accumulator
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ptp_ts_96_sec <= 48'd0;
            ptp_ts_96_ns  <= 32'd0;
            ptp_ts_96_fns <= 16'd0;
        end else begin
            // Accumulate fractional nanoseconds every cycle
            ptp_ts_96_fns <= raw_next_fns;

            // Handle 1-Second Rollover (1,000,000,000 ns = 32'h3B9ACA00)
            if (raw_next_ns >= 32'd1000000000) begin
                ptp_ts_96_ns  <= raw_next_ns - 32'd1000000000;
                ptp_ts_96_sec <= ptp_ts_96_sec + 1'b1;
            end else begin
                ptp_ts_96_ns  <= raw_next_ns;
                ptp_ts_96_sec <= ptp_ts_96_sec;
            end
        end
    end

endmodule
