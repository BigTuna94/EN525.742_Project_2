-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/microblaze_v10_0_5 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_microblaze_0_0/sim/proc_system_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mdm_v3_2_12 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_mdm_1_0/sim/proc_system_mdm_1_0.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_rst_Clk_100M_0/sim/proc_system_rst_Clk_100M_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_dlmb_v10_0/sim/proc_system_dlmb_v10_0.vhd" \
  "../../../bd/proc_system/ip/proc_system_ilmb_v10_0/sim/proc_system_ilmb_v10_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_14 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_dlmb_bram_if_cntlr_0/sim/proc_system_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/proc_system/ip/proc_system_ilmb_bram_if_cntlr_0/sim/proc_system_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_lmb_bram_0/sim/proc_system_lmb_bram_0.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_19 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_axi_uartlite_0_0/sim/proc_system_axi_uartlite_0_0.vhd" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axis_data_fifo_v1_1_16 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/e3dd/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_axis_data_fifo_0_0/sim/proc_system_axis_data_fifo_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/sim/proc_system.vhd" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_12 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_10 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_quad_spi_v3_2_14 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/9db7/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_axi_quad_spi_0_0/sim/proc_system_axi_quad_spi_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_15 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_14 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_16 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_xbar_0/sim/proc_system_xbar_0.v" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_17 \
  "../../../../project_2.srcs/sources_1/bd/proc_system/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/proc_system/ip/proc_system_axi_gpio_0_0/sim/proc_system_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

