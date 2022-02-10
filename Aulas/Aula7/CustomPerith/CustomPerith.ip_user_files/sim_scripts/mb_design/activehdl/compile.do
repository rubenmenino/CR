vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_4
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_11
vlib activehdl/lmb_bram_if_cntlr_v4_0_19
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_crossbar_v2_1_23
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_15
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/mdm_v3_2_19
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_24
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_26
vlib activehdl/axi_timer_v2_0_24
vlib activehdl/fit_timer_v2_0_10
vlib activehdl/xlslice_v1_0_2

vmap xpm activehdl/xpm
vmap microblaze_v11_0_4 activehdl/microblaze_v11_0_4
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_v10_v3_0_11 activehdl/lmb_v10_v3_0_11
vmap lmb_bram_if_cntlr_v4_0_19 activehdl/lmb_bram_if_cntlr_v4_0_19
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 activehdl/axi_crossbar_v2_1_23
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_15 activehdl/axi_intc_v4_1_15
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap mdm_v3_2_19 activehdl/mdm_v3_2_19
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 activehdl/axi_gpio_v2_0_24
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_26 activehdl/axi_uartlite_v2_0_26
vmap axi_timer_v2_0_24 activehdl/axi_timer_v2_0_24
vmap fit_timer_v2_0_10 activehdl/fit_timer_v2_0_10
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2

vlog -work xpm  -sv2k12 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_4 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/9285/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_microblaze_0_0/sim/mb_design_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_11 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/c2ed/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_dlmb_v10_0/sim/mb_design_dlmb_v10_0.vhd" \
"../../../bd/mb_design/ip/mb_design_ilmb_v10_0/sim/mb_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_19 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/0b98/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_dlmb_bram_if_cntlr_0/sim/mb_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mb_design/ip/mb_design_ilmb_bram_if_cntlr_0/sim/mb_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../bd/mb_design/ip/mb_design_lmb_bram_0/sim/mb_design_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../bd/mb_design/ip/mb_design_xbar_0/sim/mb_design_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_15 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_microblaze_0_axi_intc_0/sim/mb_design_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../bd/mb_design/ip/mb_design_microblaze_0_xlconcat_0/sim/mb_design_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_19 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/8715/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_mdm_1_0/sim/mb_design_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../bd/mb_design/ip/mb_design_clk_wiz_1_0/mb_design_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/mb_design/ip/mb_design_clk_wiz_1_0/mb_design_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0/sim/mb_design_rst_clk_wiz_1_100M_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_axi_gpio_0_0/sim/mb_design_axi_gpio_0_0.vhd" \
"../../../bd/mb_design/ip/mb_design_axi_gpio_1_0/sim/mb_design_axi_gpio_1_0.vhd" \
"../../../bd/mb_design/ip/mb_design_axi_gpio_2_0/sim/mb_design_axi_gpio_2_0.vhd" \
"../../../bd/mb_design/ip/mb_design_axi_gpio_3_0/sim/mb_design_axi_gpio_3_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_26 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/5edb/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_axi_uartlite_0_0/sim/mb_design_axi_uartlite_0_0.vhd" \

vcom -work axi_timer_v2_0_24 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/70d6/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_axi_timer_0_0/sim/mb_design_axi_timer_0_0.vhd" \

vcom -work fit_timer_v2_0_10 -93 \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/e81b/hdl/fit_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_fit_timer_0_0/sim/mb_design_fit_timer_0_0.vhd" \
"../../../bd/mb_design/ipshared/1e41/hdl/CustomCopr_v1_0_S00_AXI.vhd" \
"../../../bd/mb_design/ipshared/1e41/hdl/CustomCopr_v1_0.vhd" \
"../../../bd/mb_design/ip/mb_design_CustomCopr_0_0/sim/mb_design_CustomCopr_0_0.vhd" \
"../../../bd/mb_design/ipshared/ff0f/hdl/CustomPeriph_v1_0_S00_AXI.vhd" \
"../../../bd/mb_design/ipshared/ff0f/hdl/CustomPeriph_v1_0.vhd" \
"../../../bd/mb_design/ip/mb_design_CustomPeriph_0_0/sim/mb_design_CustomPeriph_0_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/ec67/hdl" "+incdir+../../../../CustomPerith.gen/sources_1/bd/mb_design/ipshared/d0f7" \
"../../../bd/mb_design/ip/mb_design_xlslice_0_1/sim/mb_design_xlslice_0_1.v" \
"../../../bd/mb_design/ip/mb_design_xlslice_1_0/sim/mb_design_xlslice_1_0.v" \
"../../../bd/mb_design/ip/mb_design_xlslice_2_0/sim/mb_design_xlslice_2_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/sim/mb_design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

