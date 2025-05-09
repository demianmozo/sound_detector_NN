# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/student/Documents/laburar_aca/labs/lab08/MLZedboard_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/student/Documents/laburar_aca/labs/lab08/MLZedboard_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MLZedboard_wrapper}\
-hw {/home/student/Documents/laburar_aca/labs/lab08/01-Baremetal/Lab08-01/MLZedboard_wrapper.xsa}\
-out {/home/student/Documents/laburar_aca/labs/lab08}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {MLZedboard_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
