-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Apr 11 14:15:23 2025
-- Host        : workspace running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/student/Documents/laburar_aca/labs/lab08/01-Baremetal/Lab08-01/Lab08-01.gen/sources_1/bd/MLZedboard/ip/MLZedboard_inference_0_0/MLZedboard_inference_0_0_stub.vhdl
-- Design      : MLZedboard_inference_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MLZedboard_inference_0_0 is
  Port ( 
    result_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    input_r_TVALID : in STD_LOGIC;
    input_r_TREADY : out STD_LOGIC;
    input_r_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_r_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    input_r_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    input_r_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    input_r_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    input_r_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    input_r_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end MLZedboard_inference_0_0;

architecture stub of MLZedboard_inference_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "result_ap_vld,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,input_r_TVALID,input_r_TREADY,input_r_TDATA[31:0],input_r_TDEST[5:0],input_r_TKEEP[3:0],input_r_TSTRB[3:0],input_r_TUSER[1:0],input_r_TLAST[0:0],input_r_TID[4:0],result[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "inference,Vivado 2022.2";
begin
end;
