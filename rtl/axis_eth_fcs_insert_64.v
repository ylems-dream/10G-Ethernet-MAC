/*

Copyright (c) 2015-2017 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * AXI4-Stream 64-bit Ethernet FCS inserter
 * Modified with Operand Isolation and clock enable inference for low power.
 */
module axis_eth_fcs_insert_64 #
(
    parameter DATA_WIDTH = 64,
    parameter KEEP_WIDTH = (DATA_WIDTH/8),
    parameter ENABLE_PADDING = 1,
    parameter MIN_FRAME_LENGTH = 64
)
(
    input  wire                  clk,
    input  wire                  rst,

    /*
     * AXI input
     */
    input  wire [DATA_WIDTH-1:0] s_axis_tdata,
    input  wire [KEEP_WIDTH-1:0] s_axis_tkeep,
    input  wire                  s_axis_tvalid,
    output wire                  s_axis_tready,
    input  wire                  s_axis_tlast,
    input  wire                  s_axis_tuser,

    /*
     * AXI output
     */
    output wire [DATA_WIDTH-1:0] m_axis_tdata,
    output wire [KEEP_WIDTH-1:0] m_axis_tkeep,
    output wire                  m_axis_tvalid,
    input  wire                  m_axis_tready,
    output wire                  m_axis_tlast,
    output wire                  m_axis_tuser
);

parameter EMPTY_WIDTH = $clog2(KEEP_WIDTH);
parameter MIN_LEN_WIDTH = $clog2(MIN_FRAME_LENGTH-4+1);

// Bus width assertions
initial begin
    if (DATA_WIDTH != 64) begin
        $error("Error: Interface width must be 64");
        $finish;
    end
end

localparam [1:0]
    STATE_IDLE = 2'd0,
    STATE_PAYLOAD = 2'd1,
    STATE_PAD = 2'd2,
    STATE_FCS_1 = 2'd3;

reg [1:0] state_reg = STATE_IDLE, state_next;

// Datapath control signals
reg reset_crc;
reg update_crc;

reg [DATA_WIDTH-1:0] s_tdata_reg = 0, s_tdata_next;
reg [KEEP_WIDTH-1:0] s_tkeep_reg = 0, s_tkeep_next;
reg [EMPTY_WIDTH-1:0] s_empty_reg = 0, s_empty_next;

reg [DATA_WIDTH-1:0] fcs_output_tdata_0;
reg [DATA_WIDTH-1:0] fcs_output_tdata_1;
reg [KEEP_WIDTH-1:0] fcs_output_tkeep_0;
reg [KEEP_WIDTH-1:0] fcs_output_tkeep_1;

reg frame_reg = 1'b0, frame_next;
reg [MIN_LEN_WIDTH-1:0] frame_min_count_reg = 0, frame_min_count_next;

reg s_axis_tready_reg = 1'b0, s_axis_tready_next;

reg [DATA_WIDTH-1:0] m_axis_tdata_reg = 0, m_axis_tdata_next;
reg [KEEP_WIDTH-1:0] m_axis_tkeep_reg = 0, m_axis_tkeep_next;
reg m_axis_tvalid_reg = 1'b0, m_axis_tvalid_next;
reg m_axis_tlast_reg = 1'b0, m_axis_tlast_next;
reg m_axis_tuser_reg = 1'b0, m_axis_tuser_next;

reg [31:0] crc_state_reg[7:0];
wire [31:0] crc_state_next[7:0];

// Operand Isolation signals
wire [DATA_WIDTH-1:0] s_tdata_isolated;
wire [31:0] crc_state_isolated;
wire clk_en;

assign s_axis_tready = s_axis_tready_reg;

assign m_axis_tdata = m_axis_tdata_reg;
assign m_axis_tkeep = m_axis_tkeep_reg;
assign m_axis_tvalid = m_axis_tvalid_reg;
assign m_axis_tlast = m_axis_tlast_reg;
assign m_axis_tuser = m_axis_tuser_reg;

// Clock Enable Logic
assign clk_en = (state_reg != STATE_IDLE) || s_axis_tvalid || m_axis_tready || rst;

// Operand Isolation: Freeze LFSR input data and state when CRC logic is inactive
assign s_tdata_isolated = update_crc ? s_tdata_reg : {DATA_WIDTH{1'b0}};
assign crc_state_isolated = update_crc ? crc_state_reg[7] : 32'd0;

generate
    genvar n;

    for (n = 0; n < 8; n = n + 1) begin : crc
        lfsr #(
            .LFSR_WIDTH(32),
            .LFSR_POLY(32'h4c11db7),
            .LFSR_CONFIG("GALOIS"),
            .LFSR_FEED_FORWARD(0),
            .REVERSE(1),
            .DATA_WIDTH(8*(n+1)),
            .STYLE("AUTO")
        )
        eth_crc (
            .data_in(s_tdata_isolated[0 +: 8*(n+1)]),
            .state_in(crc_state_isolated),
            .data_out(),
            .state_out(crc_state_next[n])
        );
    end

endgenerate

function [2:0] keep2empty;
    input [7:0] k;
    casez (k)
        8'bzzzzzzz0: keep2empty = 3'd7;
        8'bzzzzzz01: keep2empty = 3'd7;
        8'bzzzzz011: keep2empty = 3'd6;
        8'bzzzz0111: keep2empty = 3'd5;
        8'bzzz01111: keep2empty = 3'd4;
        8'bzz011111: keep2empty = 3'd3;
        8'bz0111111: keep2empty = 3'd2;
        8'b01111111: keep2empty = 3'd1;
        8'b11111111: keep2empty = 3'd0;
    endcase
endfunction

// FCS calculation logic
always @* begin
    casez (s_empty_reg)
        3'd7: begin
            fcs_output_tdata_0 = {~crc_state_next[0][31:0], s_tdata_reg[7:0]};
            fcs_output_tdata_1 = 0;
            fcs_output_tkeep_0 = 8'b00011111;
            fcs_output_tkeep_1 = 8'b00000000;
        end
        3'd6: begin
            fcs_output_tdata_0 = {~crc_state_next[1][31:0], s_tdata_reg[15:0]};
            fcs_output_tdata_1 = 0;
            fcs_output_tkeep_0 = 8'b00111111;
            fcs_output_tkeep_1 = 8'b00000000;
        end
        3'd5: begin
            fcs_output_tdata_0 = {~crc_state_next[2][31:0], s_tdata_reg[23:0]};
            fcs_output_tdata_1 = 0;
            fcs_output_tkeep_0 = 8'b01111111;
            fcs_output_tkeep_1 = 8'b00000000;
        end
        3'd4: begin
            fcs_output_tdata_0 = {~crc_state_next[3][31:0], s_tdata_reg[31:0]};
            fcs_output_tdata_1 = 0;
            fcs_output_tkeep_0 = 8'b11111111;
            fcs_output_tkeep_1 = 8'b00000000;
        end
        3'd3: begin
            fcs_output_tdata_0 = {~crc_state_next[4][23:0], s_tdata_reg[39:0]};
            fcs_output_tdata_1 = ~crc_state_reg[4][31:24];
            fcs_output_tkeep_0 = 8'b11111111;
            fcs_output_tkeep_1 = 8'b00000001;
        end
        3'd2: begin
            fcs_output_tdata_0 = {~crc_state_next[5][15:0], s_tdata_reg[47:0]};
            fcs_output_tdata_1 = ~crc_state_reg[5][31:16];
            fcs_output_tkeep_0 = 8'b11111111;
            fcs_output_tkeep_1 = 8'b00000011;
        end
        3'd1: begin
            fcs_output_tdata_0 = {~crc_state_next[6][7:0], s_tdata_reg[55:0]};
            fcs_output_tdata_1 = ~crc_state_reg[6][31:8];
            fcs_output_tkeep_0 = 8'b11111111;
            fcs_output_tkeep_1 = 8'b00000111;
        end
        3'd0: begin
            fcs_output_tdata_0 = s_tdata_reg;
            fcs_output_tdata_1 = ~crc_state_reg[7][31:0];
            fcs_output_tkeep_0 = 8'b11111111;
            fcs_output_tkeep_1 = 8'b00001111;
        end
    endcase
end

always @* begin
    state_next = STATE_IDLE;

    reset_crc = 1'b0;
    update_crc = 1'b0;

    frame_next = frame_reg;
    frame_min_count_next = frame_min_count_reg;

    s_axis_tready_next = 1'b0;

    s_tdata_next = s_tdata_reg;
    s_tkeep_next = s_tkeep_reg;
    s_empty_next = s_empty_reg;

    m_axis_tdata_next = m_axis_tdata_reg;
    m_axis_tkeep_next = m_axis_tkeep_reg;
    m_axis_tvalid_next = m_axis_tvalid_reg && !m_axis_tready;
    m_axis_tlast_next = m_axis_tlast_reg;
    m_axis_tuser_next = m_axis_tuser_reg;

    if (s_axis_tvalid && s_axis_tready) begin
        frame_next = !s_axis_tlast;
    end

    case (state_reg)
        STATE_IDLE: begin
            // Idle state - wait for data
            frame_min_count_next = MIN_FRAME_LENGTH-4;
            reset_crc = 1'b1;
            s_axis_tready_next = !m_axis_tvalid || m_axis_tready;

            s_tdata_next = s_axis_tdata;
            s_tkeep_next = s_axis_tkeep;
            s_empty_next = keep2empty(s_axis_tkeep);

            if (s_axis_tvalid && s_axis_tready) begin
                s_axis_tready_next = 1'b0;
                m_axis_tdata_next = s_tdata_reg;
                m_axis_tkeep_next = s_tkeep_reg;
                m_axis_tvalid_next = 1'b1;
                m_axis_tlast_next = 1'b0;
                m_axis_tuser_next = 1'b0;
                update_crc = 1'b1;

                if (frame_min_count_reg > KEEP_WIDTH) begin
                    frame_min_count_next = frame_min_count_reg - KEEP_WIDTH;
                end else begin
                    frame_min_count_next = 0;
                end

                if (!s_axis_tvalid || s_axis_tlast) begin
                    m_axis_tuser_next = s_axis_tuser;
                    if (ENABLE_PADDING && frame_min_count_reg) begin
                        if (frame_min_count_reg > KEEP_WIDTH) begin
                            s_empty_next = 0;
                            state_next = STATE_PAD;
                        end else begin
                            if (keep2empty(s_axis_tkeep) > KEEP_WIDTH-frame_min_count_reg) begin
                                s_empty_next = KEEP_WIDTH-frame_min_count_reg;
                            end
                            state_next = STATE_FCS_1;
                        end
                    end else begin
                        state_next = STATE_FCS_1;
                    end
                end else begin
                    state_next = STATE_PAYLOAD;
                end
            end else begin
                state_next = STATE_IDLE;
            end
        end
        STATE_PAYLOAD: begin
            // Transfer payload
            s_axis_tready_next = !m_axis_tvalid || m_axis_tready;

            if (s_axis_tready) begin
                s_tdata_next = s_axis_tdata;
                s_tkeep_next = s_axis_tkeep;
                s_empty_next = keep2empty(s_axis_tkeep);

                m_axis_tdata_next = s_tdata_reg;
                m_axis_tkeep_next = s_tkeep_reg;
                m_axis_tvalid_next = 1'b1;
                m_axis_tlast_next = 1'b0;
                m_axis_tuser_next = 1'b0;
                update_crc = 1'b1;

                if (frame_min_count_reg > KEEP_WIDTH) begin
                    frame_min_count_next = frame_min_count_reg - KEEP_WIDTH;
                end else begin
                    frame_min_count_next = 0;
                end

                if (!s_axis_tvalid || s_axis_tlast) begin
                    s_axis_tready_next = 1'b0;
                    m_axis_tuser_next = s_axis_tuser;
                    if (ENABLE_PADDING && frame_min_count_reg) begin
                        if (frame_min_count_reg > KEEP_WIDTH) begin
                            s_empty_next = 0;
                            state_next = STATE_PAD;
                        end else begin
                            if (keep2empty(s_axis_tkeep) > KEEP_WIDTH-frame_min_count_reg) begin
                                s_empty_next = KEEP_WIDTH-frame_min_count_reg;
                            end
                            state_next = STATE_FCS_1;
                        end
                    end else begin
                        state_next = STATE_FCS_1;
                    end
                end else begin
                    state_next = STATE_PAYLOAD;
                end
            end else begin
                state_next = STATE_PAYLOAD;
            end
        end
        STATE_PAD: begin
            // Pad frame to MIN_FRAME_LENGTH
            s_axis_tready_next = 1'b0;

            if (!m_axis_tvalid || m_axis_tready) begin
                s_tdata_next = 64'd0;
                s_tkeep_next = 8'hff;
                s_empty_next = 0;

                m_axis_tdata_next = s_tdata_reg;
                m_axis_tkeep_next = s_tkeep_reg;
                m_axis_tvalid_next = 1'b1;
                m_axis_tlast_next = 1'b0;

                update_crc = 1'b1;

                if (frame_min_count_reg > KEEP_WIDTH) begin
                    frame_min_count_next = frame_min_count_reg - KEEP_WIDTH;
                    state_next = STATE_PAD;
                end else begin
                    frame_min_count_next = 0;
                    s_empty_next = KEEP_WIDTH-frame_min_count_reg;
                    state_next = STATE_FCS_1;
                end
            end else begin
                state_next = STATE_PAD;
            end
        end
        STATE_FCS_1: begin
            // Transfer FCS byte lane 0
            s_axis_tready_next = 1'b0;

            if (!m_axis_tvalid || m_axis_tready) begin
                m_axis_tdata_next = fcs_output_tdata_0;
                m_axis_tkeep_next = fcs_output_tkeep_0;
                m_axis_tvalid_next = 1'b1;
                m_axis_tlast_next = s_empty_reg > 3;

                update_crc = 1'b1;

                if (s_empty_reg > 3) begin
                    s_axis_tready_next = !m_axis_tvalid_next || m_axis_tready;
                    state_next = STATE_IDLE;
                end else begin
                    state_next = STATE_FCS_1;
                end
            end else begin
                state_next = STATE_FCS_1;
            end
        end
    endcase
end

// Synchronous sequential block with clock gating
always @(posedge clk) begin
    if (rst) begin
        state_reg <= STATE_IDLE;

        frame_reg <= 1'b0;
        frame_min_count_reg <= {MIN_LEN_WIDTH{1'b0}};

        s_tdata_reg <= {DATA_WIDTH{1'b0}};
        s_tkeep_reg <= {KEEP_WIDTH{1'b0}};
        s_empty_reg <= {EMPTY_WIDTH{1'b0}};

        s_axis_tready_reg <= 1'b0;

        m_axis_tdata_reg <= {DATA_WIDTH{1'b0}};
        m_axis_tkeep_reg <= {KEEP_WIDTH{1'b0}};
        m_axis_tvalid_reg <= 1'b0;
        m_axis_tlast_reg <= 1'b0;
        m_axis_tuser_reg <= 1'b0;

        crc_state_reg[0] <= 32'd0;
        crc_state_reg[1] <= 32'd0;
        crc_state_reg[2] <= 32'd0;
        crc_state_reg[3] <= 32'd0;
        crc_state_reg[4] <= 32'd0;
        crc_state_reg[5] <= 32'd0;
        crc_state_reg[6] <= 32'd0;
        crc_state_reg[7] <= 32'hFFFFFFFF;
    end else if (clk_en) begin
        state_reg <= state_next;

        frame_reg <= frame_next;
        frame_min_count_reg <= frame_min_count_next;

        s_tdata_reg <= s_tdata_next;
        s_tkeep_reg <= s_tkeep_next;
        s_empty_reg <= s_empty_next;

        s_axis_tready_reg <= s_axis_tready_next;

        m_axis_tdata_reg <= m_axis_tdata_next;
        m_axis_tkeep_reg <= m_axis_tkeep_next;
        m_axis_tvalid_reg <= m_axis_tvalid_next;
        m_axis_tlast_reg <= m_axis_tlast_next;
        m_axis_tuser_reg <= m_axis_tuser_next;

        if (update_crc || reset_crc) begin
            crc_state_reg[0] <= crc_state_next[0];
            crc_state_reg[1] <= crc_state_next[1];
            crc_state_reg[2] <= crc_state_next[2];
            crc_state_reg[3] <= crc_state_next[3];
            crc_state_reg[4] <= crc_state_next[4];
            crc_state_reg[5] <= crc_state_next[5];
            crc_state_reg[6] <= crc_state_next[6];

            if (update_crc) begin
                crc_state_reg[7] <= crc_state_next[7];
            end

            if (reset_crc) begin
                crc_state_reg[7] <= 32'hFFFFFFFF;
            end
        end
    end
end

endmodule

`resetall
