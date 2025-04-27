// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Apr 11 05:28:31 2025
// Host        : workspace running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MLZedboard_comblock_0_0_stub.v
// Design      : MLZedboard_comblock_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_comblock,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(reg0_i, reg1_i, reg2_i, reg3_i, reg0_o, reg1_o, 
  reg2_o, reg3_o, fifo_clk_i, fifo_clear_i, fifo_re_i, fifo_data_o, fifo_valid_o, fifo_empty_o, 
  fifo_aempty_o, fifo_underflow_o, axil_aclk, axil_aresetn, axil_awaddr, axil_awprot, 
  axil_awvalid, axil_awready, axil_wdata, axil_wstrb, axil_wvalid, axil_wready, axil_bresp, 
  axil_bvalid, axil_bready, axil_araddr, axil_arprot, axil_arvalid, axil_arready, axil_rdata, 
  axil_rresp, axil_rvalid, axil_rready)
/* synthesis syn_black_box black_box_pad_pin="reg0_i[31:0],reg1_i[31:0],reg2_i[31:0],reg3_i[31:0],reg0_o[31:0],reg1_o[31:0],reg2_o[31:0],reg3_o[31:0],fifo_clk_i,fifo_clear_i,fifo_re_i,fifo_data_o[31:0],fifo_valid_o,fifo_empty_o,fifo_aempty_o,fifo_underflow_o,axil_aclk,axil_aresetn,axil_awaddr[7:0],axil_awprot[2:0],axil_awvalid,axil_awready,axil_wdata[31:0],axil_wstrb[3:0],axil_wvalid,axil_wready,axil_bresp[1:0],axil_bvalid,axil_bready,axil_araddr[7:0],axil_arprot[2:0],axil_arvalid,axil_arready,axil_rdata[31:0],axil_rresp[1:0],axil_rvalid,axil_rready" */;
  input [31:0]reg0_i;
  input [31:0]reg1_i;
  input [31:0]reg2_i;
  input [31:0]reg3_i;
  output [31:0]reg0_o;
  output [31:0]reg1_o;
  output [31:0]reg2_o;
  output [31:0]reg3_o;
  input fifo_clk_i;
  input fifo_clear_i;
  input fifo_re_i;
  output [31:0]fifo_data_o;
  output fifo_valid_o;
  output fifo_empty_o;
  output fifo_aempty_o;
  output fifo_underflow_o;
  input axil_aclk;
  input axil_aresetn;
  input [7:0]axil_awaddr;
  input [2:0]axil_awprot;
  input axil_awvalid;
  output axil_awready;
  input [31:0]axil_wdata;
  input [3:0]axil_wstrb;
  input axil_wvalid;
  output axil_wready;
  output [1:0]axil_bresp;
  output axil_bvalid;
  input axil_bready;
  input [7:0]axil_araddr;
  input [2:0]axil_arprot;
  input axil_arvalid;
  output axil_arready;
  output [31:0]axil_rdata;
  output [1:0]axil_rresp;
  output axil_rvalid;
  input axil_rready;
endmodule
