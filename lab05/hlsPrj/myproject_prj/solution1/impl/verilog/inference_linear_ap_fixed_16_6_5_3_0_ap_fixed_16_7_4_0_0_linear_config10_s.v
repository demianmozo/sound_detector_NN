// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config10_s (
        ap_ready,
        p_read,
        p_read2,
        p_read3,
        p_read4,
        p_read6,
        p_read9,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5
);


output   ap_ready;
input  [15:0] p_read;
input  [15:0] p_read2;
input  [15:0] p_read3;
input  [15:0] p_read4;
input  [15:0] p_read6;
input  [15:0] p_read9;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
output  [15:0] ap_return_3;
output  [15:0] ap_return_4;
output  [15:0] ap_return_5;

wire   [14:0] p_Val2_s_fu_92_p4;
wire   [0:0] tmp_fu_106_p3;
wire   [0:0] trunc_ln29_11_fu_88_p1;
wire   [0:0] and_ln374_fu_114_p2;
wire   [15:0] zext_ln377_fu_120_p1;
wire  signed [15:0] sext_ln818_fu_102_p1;
wire   [14:0] p_Val2_7_fu_130_p4;
wire   [0:0] tmp_7_fu_144_p3;
wire   [0:0] trunc_ln29_10_fu_84_p1;
wire   [0:0] and_ln374_7_fu_152_p2;
wire   [15:0] zext_ln377_7_fu_158_p1;
wire  signed [15:0] sext_ln818_7_fu_140_p1;
wire   [14:0] p_Val2_8_fu_168_p4;
wire   [0:0] tmp_8_fu_182_p3;
wire   [0:0] trunc_ln29_9_fu_80_p1;
wire   [0:0] and_ln374_8_fu_190_p2;
wire   [15:0] zext_ln377_8_fu_196_p1;
wire  signed [15:0] sext_ln818_8_fu_178_p1;
wire   [14:0] p_Val2_9_fu_206_p4;
wire   [0:0] tmp_9_fu_220_p3;
wire   [0:0] trunc_ln29_8_fu_76_p1;
wire   [0:0] and_ln374_9_fu_228_p2;
wire   [15:0] zext_ln377_9_fu_234_p1;
wire  signed [15:0] sext_ln818_9_fu_216_p1;
wire   [14:0] p_Val2_10_fu_244_p4;
wire   [0:0] tmp_10_fu_258_p3;
wire   [0:0] trunc_ln29_7_fu_72_p1;
wire   [0:0] and_ln374_10_fu_266_p2;
wire   [15:0] zext_ln377_10_fu_272_p1;
wire  signed [15:0] sext_ln818_10_fu_254_p1;
wire   [14:0] p_Val2_11_fu_282_p4;
wire   [0:0] tmp_11_fu_296_p3;
wire   [0:0] trunc_ln29_fu_68_p1;
wire   [0:0] and_ln374_11_fu_304_p2;
wire   [15:0] zext_ln377_11_fu_310_p1;
wire  signed [15:0] sext_ln818_11_fu_292_p1;
wire   [15:0] add_ln377_fu_124_p2;
wire   [15:0] add_ln377_7_fu_162_p2;
wire   [15:0] add_ln377_8_fu_200_p2;
wire   [15:0] add_ln377_9_fu_238_p2;
wire   [15:0] add_ln377_10_fu_276_p2;
wire   [15:0] add_ln377_11_fu_314_p2;

assign add_ln377_10_fu_276_p2 = ($signed(zext_ln377_10_fu_272_p1) + $signed(sext_ln818_10_fu_254_p1));

assign add_ln377_11_fu_314_p2 = ($signed(zext_ln377_11_fu_310_p1) + $signed(sext_ln818_11_fu_292_p1));

assign add_ln377_7_fu_162_p2 = ($signed(zext_ln377_7_fu_158_p1) + $signed(sext_ln818_7_fu_140_p1));

assign add_ln377_8_fu_200_p2 = ($signed(zext_ln377_8_fu_196_p1) + $signed(sext_ln818_8_fu_178_p1));

assign add_ln377_9_fu_238_p2 = ($signed(zext_ln377_9_fu_234_p1) + $signed(sext_ln818_9_fu_216_p1));

assign add_ln377_fu_124_p2 = ($signed(zext_ln377_fu_120_p1) + $signed(sext_ln818_fu_102_p1));

assign and_ln374_10_fu_266_p2 = (trunc_ln29_7_fu_72_p1 & tmp_10_fu_258_p3);

assign and_ln374_11_fu_304_p2 = (trunc_ln29_fu_68_p1 & tmp_11_fu_296_p3);

assign and_ln374_7_fu_152_p2 = (trunc_ln29_10_fu_84_p1 & tmp_7_fu_144_p3);

assign and_ln374_8_fu_190_p2 = (trunc_ln29_9_fu_80_p1 & tmp_8_fu_182_p3);

assign and_ln374_9_fu_228_p2 = (trunc_ln29_8_fu_76_p1 & tmp_9_fu_220_p3);

assign and_ln374_fu_114_p2 = (trunc_ln29_11_fu_88_p1 & tmp_fu_106_p3);

assign ap_ready = 1'b1;

assign p_Val2_10_fu_244_p4 = {{p_read6[15:1]}};

assign p_Val2_11_fu_282_p4 = {{p_read9[15:1]}};

assign p_Val2_7_fu_130_p4 = {{p_read2[15:1]}};

assign p_Val2_8_fu_168_p4 = {{p_read3[15:1]}};

assign p_Val2_9_fu_206_p4 = {{p_read4[15:1]}};

assign p_Val2_s_fu_92_p4 = {{p_read[15:1]}};

assign sext_ln818_10_fu_254_p1 = $signed(p_Val2_10_fu_244_p4);

assign sext_ln818_11_fu_292_p1 = $signed(p_Val2_11_fu_282_p4);

assign sext_ln818_7_fu_140_p1 = $signed(p_Val2_7_fu_130_p4);

assign sext_ln818_8_fu_178_p1 = $signed(p_Val2_8_fu_168_p4);

assign sext_ln818_9_fu_216_p1 = $signed(p_Val2_9_fu_206_p4);

assign sext_ln818_fu_102_p1 = $signed(p_Val2_s_fu_92_p4);

assign tmp_10_fu_258_p3 = p_read6[32'd1];

assign tmp_11_fu_296_p3 = p_read9[32'd1];

assign tmp_7_fu_144_p3 = p_read2[32'd1];

assign tmp_8_fu_182_p3 = p_read3[32'd1];

assign tmp_9_fu_220_p3 = p_read4[32'd1];

assign tmp_fu_106_p3 = p_read[32'd1];

assign trunc_ln29_10_fu_84_p1 = p_read2[0:0];

assign trunc_ln29_11_fu_88_p1 = p_read[0:0];

assign trunc_ln29_7_fu_72_p1 = p_read6[0:0];

assign trunc_ln29_8_fu_76_p1 = p_read4[0:0];

assign trunc_ln29_9_fu_80_p1 = p_read3[0:0];

assign trunc_ln29_fu_68_p1 = p_read9[0:0];

assign zext_ln377_10_fu_272_p1 = and_ln374_10_fu_266_p2;

assign zext_ln377_11_fu_310_p1 = and_ln374_11_fu_304_p2;

assign zext_ln377_7_fu_158_p1 = and_ln374_7_fu_152_p2;

assign zext_ln377_8_fu_196_p1 = and_ln374_8_fu_190_p2;

assign zext_ln377_9_fu_234_p1 = and_ln374_9_fu_228_p2;

assign zext_ln377_fu_120_p1 = and_ln374_fu_114_p2;

assign ap_return_0 = add_ln377_fu_124_p2;

assign ap_return_1 = add_ln377_7_fu_162_p2;

assign ap_return_2 = add_ln377_8_fu_200_p2;

assign ap_return_3 = add_ln377_9_fu_238_p2;

assign ap_return_4 = add_ln377_10_fu_276_p2;

assign ap_return_5 = add_ln377_11_fu_314_p2;

endmodule //inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config10_s
