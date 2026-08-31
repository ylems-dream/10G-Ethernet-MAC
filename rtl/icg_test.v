`timescale 1ns / 1ps
`default_nettype none

module icg_test (
    input  wire clk_in,
    input  wire en,
    output wire clk_out
);

    reg en_latched;

    // Active-low latch ensures glitch-free clock gating
    always @(clk_in or en) begin
        if (!clk_in) begin
            en_latched <= en;
        end
    end

    assign clk_out = clk_in & en_latched;

    `ifdef COCOTB_SIM
    initial begin
        $dumpfile("icg_test.vcd");
        $dumpvars(0, icg_test);
    end
    `endif

endmodule
