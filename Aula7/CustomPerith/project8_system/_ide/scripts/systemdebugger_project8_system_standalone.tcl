# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Menino\Desktop\MEU\4ano\2semestre\CR\Aula7\CustomPerith\project8_system\_ide\scripts\systemdebugger_project8_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Menino\Desktop\MEU\4ano\2semestre\CR\Aula7\CustomPerith\project8_system\_ide\scripts\systemdebugger_project8_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys4 210274505271A" && level==0 && jtag_device_ctx=="jsn-Nexys4-210274505271A-13631093-0"}
fpga -file C:/Users/Menino/Desktop/MEU/4ano/2semestre/CR/Aula7/CustomPerith/project8/_ide/bitstream/mb_design_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/Menino/Desktop/MEU/4ano/2semestre/CR/Aula7/CustomPerith/mb_design_wrapper/export/mb_design_wrapper/hw/mb_design_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
