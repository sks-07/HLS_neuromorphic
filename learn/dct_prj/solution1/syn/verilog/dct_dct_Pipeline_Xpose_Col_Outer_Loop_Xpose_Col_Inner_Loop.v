// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        col_outbuf_address0,
        col_outbuf_ce0,
        col_outbuf_q0,
        buf_2d_out_address0,
        buf_2d_out_ce0,
        buf_2d_out_we0,
        buf_2d_out_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] col_outbuf_address0;
output   col_outbuf_ce0;
input  [15:0] col_outbuf_q0;
output  [5:0] buf_2d_out_address0;
output   buf_2d_out_ce0;
output   buf_2d_out_we0;
output  [15:0] buf_2d_out_d0;

reg ap_idle;
reg col_outbuf_ce0;
reg buf_2d_out_ce0;
reg buf_2d_out_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln63_fu_99_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] add_ln66_1_fu_188_p2;
reg   [5:0] add_ln66_1_reg_248;
wire   [63:0] zext_ln66_2_fu_183_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln66_3_fu_215_p1;
reg   [3:0] i_fu_42;
wire   [3:0] add_ln65_fu_194_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [3:0] j_fu_46;
wire   [3:0] select_ln63_1_fu_141_p3;
reg   [3:0] ap_sig_allocacmp_j_load;
reg   [6:0] indvar_flatten36_fu_50;
wire   [6:0] add_ln63_1_fu_105_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten36_load;
wire   [0:0] icmp_ln65_fu_123_p2;
wire   [3:0] select_ln63_fu_129_p3;
wire   [3:0] add_ln63_fu_117_p2;
wire   [2:0] trunc_ln63_1_fu_149_p1;
wire   [2:0] trunc_ln63_fu_137_p1;
wire   [5:0] tmp_1_fu_169_p3;
wire   [5:0] zext_ln66_fu_153_p1;
wire   [5:0] add_ln66_fu_177_p2;
wire   [5:0] tmp_s_fu_157_p3;
wire   [5:0] zext_ln66_1_fu_165_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

dct_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln63_fu_99_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_42 <= add_ln65_fu_194_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_42 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln63_fu_99_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten36_fu_50 <= add_ln63_1_fu_105_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten36_fu_50 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln63_fu_99_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_46 <= select_ln63_1_fu_141_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_46 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln63_fu_99_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln66_1_reg_248 <= add_ln66_1_fu_188_p2;
    end
end

always @ (*) begin
    if (((icmp_ln63_fu_99_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_42;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten36_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten36_load = indvar_flatten36_fu_50;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 4'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2d_out_ce0 = 1'b1;
    end else begin
        buf_2d_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2d_out_we0 = 1'b1;
    end else begin
        buf_2d_out_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col_outbuf_ce0 = 1'b1;
    end else begin
        col_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln63_1_fu_105_p2 = (ap_sig_allocacmp_indvar_flatten36_load + 7'd1);

assign add_ln63_fu_117_p2 = (ap_sig_allocacmp_j_load + 4'd1);

assign add_ln65_fu_194_p2 = (select_ln63_fu_129_p3 + 4'd1);

assign add_ln66_1_fu_188_p2 = (tmp_s_fu_157_p3 + zext_ln66_1_fu_165_p1);

assign add_ln66_fu_177_p2 = (tmp_1_fu_169_p3 + zext_ln66_fu_153_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign buf_2d_out_address0 = zext_ln66_3_fu_215_p1;

assign buf_2d_out_d0 = col_outbuf_q0;

assign col_outbuf_address0 = zext_ln66_2_fu_183_p1;

assign icmp_ln63_fu_99_p2 = ((ap_sig_allocacmp_indvar_flatten36_load == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln65_fu_123_p2 = ((ap_sig_allocacmp_i_load == 4'd8) ? 1'b1 : 1'b0);

assign select_ln63_1_fu_141_p3 = ((icmp_ln65_fu_123_p2[0:0] == 1'b1) ? add_ln63_fu_117_p2 : ap_sig_allocacmp_j_load);

assign select_ln63_fu_129_p3 = ((icmp_ln65_fu_123_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_i_load);

assign tmp_1_fu_169_p3 = {{trunc_ln63_fu_137_p1}, {3'd0}};

assign tmp_s_fu_157_p3 = {{trunc_ln63_1_fu_149_p1}, {3'd0}};

assign trunc_ln63_1_fu_149_p1 = select_ln63_1_fu_141_p3[2:0];

assign trunc_ln63_fu_137_p1 = select_ln63_fu_129_p3[2:0];

assign zext_ln66_1_fu_165_p1 = select_ln63_fu_129_p3;

assign zext_ln66_2_fu_183_p1 = add_ln66_fu_177_p2;

assign zext_ln66_3_fu_215_p1 = add_ln66_1_reg_248;

assign zext_ln66_fu_153_p1 = select_ln63_1_fu_141_p3;

endmodule //dct_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop
