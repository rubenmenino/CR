# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Menino\Desktop\MEU\4ano\2semestre\CR\Aula7\CustomPerith\mb_design_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Menino\Desktop\MEU\4ano\2semestre\CR\Aula7\CustomPerith\mb_design_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {mb_design_wrapper}\
-hw {C:\Users\Menino\Desktop\MEU\4ano\2semestre\CR\Aula7\CustomPerith\mb_design_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/Menino/Desktop/MEU/4ano/2semestre/CR/Aula7/CustomPerith}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {mb_design_wrapper}
platform generate -quick
