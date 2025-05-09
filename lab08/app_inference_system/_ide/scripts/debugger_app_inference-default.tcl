# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/student/Documents/laburar_aca/labs/lab08/app_inference_system/_ide/scripts/debugger_app_inference-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/student/Documents/laburar_aca/labs/lab08/app_inference_system/_ide/scripts/debugger_app_inference-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248684938" && level==0 && jtag_device_ctx=="jsn-Zed-210248684938-23727093-0"}
fpga -file /home/student/Documents/laburar_aca/labs/lab08/app_inference/_ide/bitstream/MLZedboard_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/student/Documents/laburar_aca/labs/lab08/MLZedboard_wrapper/export/MLZedboard_wrapper/hw/MLZedboard_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/student/Documents/laburar_aca/labs/lab08/app_inference/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
configparams force-mem-access 0
