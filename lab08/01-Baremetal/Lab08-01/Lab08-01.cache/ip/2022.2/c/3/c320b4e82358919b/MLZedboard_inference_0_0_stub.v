// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Apr 11 14:15:08 2025
// Host        : workspace running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MLZedboard_inference_0_0_stub.v
// Design      : MLZedboard_inference_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "inference,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(result_ap_vld, ap_clk, ap_rst_n, ap_start, 
  ap_done, ap_idle, ap_ready, input_r_TVALID, input_r_TREADY, input_r_TDATA, input_r_TDEST, 
  input_r_TKEEP, input_r_TSTRB, input_r_TUSER, input_r_TLAST, input_r_TID, result)
/* synthesis syn_black_box black_box_pad_pin="result_ap_vld,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,input_r_TVALID,input_r_TREADY,input_r_TDATA[31:0],input_r_TDEST[5:0],input_r_TKEEP[3:0],input_r_TSTRB[3:0],input_r_TUSER[1:0],input_r_TLAST[0:0],input_r_TID[4:0],result[31:0]" */;
  output result_ap_vld;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input input_r_TVALID;
  output input_r_TREADY;
  input [31:0]input_r_TDATA;
  input [5:0]input_r_TDEST;
  input [3:0]input_r_TKEEP;
  input [3:0]input_r_TSTRB;
  input [1:0]input_r_TUSER;
  input [0:0]input_r_TLAST;
  input [4:0]input_r_TID;
  output [31:0]result;
endmodule
