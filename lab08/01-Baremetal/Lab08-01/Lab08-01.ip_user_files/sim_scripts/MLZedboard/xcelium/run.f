-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/MLZedboard/ipshared/7b64/hdl/axil.vhdl" \
  "../../../bd/MLZedboard/ipshared/7b64/hdl/axif.vhdl" \
  "../../../bd/MLZedboard/ipshared/7b64/hdl/tdpram.vhdl" \
  "../../../bd/MLZedboard/ipshared/7b64/hdl/graysync.vhdl" \
  "../../../bd/MLZedboard/ipshared/7b64/hdl/fifo.vhdl" \
  "../../../bd/MLZedboard/ipshared/7b64/hdl/comblock.vhdl" \
  "../../../bd/MLZedboard/ipshared/7b64/hdl/axi_comblock.vhdl" \
  "../../../bd/MLZedboard/ip/MLZedboard_comblock_0_0/sim/MLZedboard_comblock_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_dense_latency_ap_fixed_8_3_5_3_0_ap_fixed_16_6_5_3_0_config5_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_8_2_5_3_0_config2_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_dense_latency_ap_fixed_16_7_4_0_0_ap_fixed_16_6_5_3_0_config8_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_dense_latency_ap_fixed_16_7_4_0_0_ap_fixed_16_6_5_3_0_config11_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_hls_deadlock_idx0_monitor.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_linear_ap_fixed_8_2_5_3_0_ap_fixed_16_6_5_3_0_linear_config3_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_8_3_5_3_0_linear_config4_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config7_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config10_s.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_mul_8s_6ns_14_1_1.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_mul_8s_6s_14_1_1.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_mul_16s_5ns_19_1_1.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_mul_16s_5s_19_1_1.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_mul_32s_34ns_65_1_1.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference_regslice_both.v" \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog/inference.v" \
  "../../../bd/MLZedboard/ip/MLZedboard_inference_0_0/sim/MLZedboard_inference_0_0.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/MLZedboard/ip/MLZedboard_processing_system7_0_0/sim/MLZedboard_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/MLZedboard/ip/MLZedboard_auto_pc_0/sim/MLZedboard_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/MLZedboard/ip/MLZedboard_rst_ps7_0_100M_0/sim/MLZedboard_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/MLZedboard/ip/MLZedboard_xlconstant_0_0/sim/MLZedboard_xlconstant_0_0.v" \
  "../../../bd/MLZedboard/ip/MLZedboard_xlconstant_1_0/sim/MLZedboard_xlconstant_1_0.v" \
  "../../../bd/MLZedboard/sim/MLZedboard.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

