vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlconstant_v1_1_7

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/MLZedboard/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/MLZedboard/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/MLZedboard/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/MLZedboard/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/MLZedboard/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/MLZedboard/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/MLZedboard/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/MLZedboard/ip/MLZedboard_comblock_0_0/sim/MLZedboard_comblock_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
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

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/MLZedboard/ip/MLZedboard_processing_system7_0_0/sim/MLZedboard_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93  \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/MLZedboard/ip/MLZedboard_auto_pc_0/sim/MLZedboard_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/MLZedboard/ip/MLZedboard_rst_ps7_0_100M_0/sim/MLZedboard_rst_ps7_0_100M_0.vhd" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/252c/hdl/verilog" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ec67/hdl" "+incdir+../../../../Lab08-01.gen/sources_1/bd/MLZedboard/ipshared/ee60/hdl" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/MLZedboard/ip/MLZedboard_xlconstant_0_0/sim/MLZedboard_xlconstant_0_0.v" \
"../../../bd/MLZedboard/ip/MLZedboard_xlconstant_1_0/sim/MLZedboard_xlconstant_1_0.v" \
"../../../bd/MLZedboard/sim/MLZedboard.v" \

vlog -work xil_defaultlib \
"glbl.v"

