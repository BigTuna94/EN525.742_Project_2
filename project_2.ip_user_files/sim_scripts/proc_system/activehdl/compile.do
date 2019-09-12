vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v10_0_5
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/mdm_v3_2_12
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_14
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_19
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/fifo_generator_v13_2_1
vlib activehdl/axis_data_fifo_v1_1_16
vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/lib_fifo_v1_0_10
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_quad_spi_v3_2_14
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_15
vlib activehdl/axi_data_fifo_v2_1_14
vlib activehdl/axi_crossbar_v2_1_16
vlib activehdl/axi_gpio_v2_0_17

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v10_0_5 activehdl/microblaze_v10_0_5
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_12 activehdl/mdm_v3_2_12
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_14 activehdl/lmb_bram_if_cntlr_v4_0_14
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_19 activehdl/axi_uartlite_v2_0_19
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap fifo_generator_v13_2_1 activehdl/fifo_generator_v13_2_1
vmap axis_data_fifo_v1_1_16 activehdl/axis_data_fifo_v1_1_16
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap lib_fifo_v1_0_10 activehdl/lib_fifo_v1_0_10
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_14 activehdl/axi_quad_spi_v3_2_14
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_15 activehdl/axi_register_slice_v2_1_15
vmap axi_data_fifo_v2_1_14 activehdl/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 activehdl/axi_crossbar_v2_1_16
vmap axi_gpio_v2_0_17 activehdl/axi_gpio_v2_0_17

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_5 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_microblaze_0_0/sim/proc_system_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_12 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_mdm_1_0/sim/proc_system_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_rst_Clk_100M_0/sim/proc_system_rst_Clk_100M_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_dlmb_v10_0/sim/proc_system_dlmb_v10_0.vhd" \
"../../../bd/proc_system/ip/proc_system_ilmb_v10_0/sim/proc_system_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_dlmb_bram_if_cntlr_0/sim/proc_system_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/proc_system/ip/proc_system_ilmb_bram_if_cntlr_0/sim/proc_system_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../bd/proc_system/ip/proc_system_lmb_bram_0/sim/proc_system_lmb_bram_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_19 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_axi_uartlite_0_0/sim/proc_system_axi_uartlite_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axis_data_fifo_v1_1_16  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/e3dd/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../bd/proc_system/ip/proc_system_axis_data_fifo_0_0/sim/proc_system_axis_data_fifo_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/sim/proc_system.vhd" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_fifo_v1_0_10 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_14 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/9db7/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_axi_quad_spi_0_0/sim/proc_system_axi_quad_spi_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl" \
"../../../bd/proc_system/ip/proc_system_xbar_0/sim/proc_system_xbar_0.v" \

vcom -work axi_gpio_v2_0_17 -93 \
"../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/proc_system/ip/proc_system_axi_gpio_0_0/sim/proc_system_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
