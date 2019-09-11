# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.cache/wt [current_project]
set_property parent.project_path C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zedboard:part0:1.0 [current_project]
set_property ip_output_repo c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/imports/project_1_part_2.srcs/sources_1/imports/p1p2_src/lowlevel_dac_intfc.vhd
  C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/new/project2_top.vhd
}
add_files C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/proc_system.bd
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_microblaze_0_0/proc_system_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_microblaze_0_0/proc_system_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_microblaze_0_0/proc_system_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_mdm_1_0/proc_system_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_mdm_1_0/proc_system_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_rst_Clk_100M_0/proc_system_rst_Clk_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_rst_Clk_100M_0/proc_system_rst_Clk_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_rst_Clk_100M_0/proc_system_rst_Clk_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_dlmb_v10_0/proc_system_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_dlmb_v10_0/proc_system_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_ilmb_v10_0/proc_system_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_ilmb_v10_0/proc_system_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_dlmb_bram_if_cntlr_0/proc_system_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_ilmb_bram_if_cntlr_0/proc_system_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_lmb_bram_0/proc_system_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_uartlite_0_0/proc_system_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_uartlite_0_0/proc_system_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_uartlite_0_0/proc_system_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axis_data_fifo_0_0/proc_system_axis_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axis_data_fifo_0_0/proc_system_axis_data_fifo_0_0/proc_system_axis_data_fifo_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_quad_spi_0_0/proc_system_axi_quad_spi_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_quad_spi_0_0/proc_system_axi_quad_spi_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_quad_spi_0_0/proc_system_axi_quad_spi_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_quad_spi_0_0/proc_system_axi_quad_spi_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_xbar_0/proc_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_gpio_0_0/proc_system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_gpio_0_0/proc_system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/ip/proc_system_axi_gpio_0_0/proc_system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/sources_1/bd/proc_system/proc_system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/constrs_1/imports/new/project1_zedboard.xdc
set_property used_in_implementation false [get_files C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/constrs_1/imports/new/project1_zedboard.xdc]

read_xdc C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/constrs_1/imports/Downloads/zedboard_master_XDC_RevC_D_v3.xdc
set_property used_in_implementation false [get_files C:/Users/Zach/Documents/GradSchool/Fall_2019/EN525.742_SOC_Design_Lab/EN525.742_Project_2/project_2.srcs/constrs_1/imports/Downloads/zedboard_master_XDC_RevC_D_v3.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top project2_top -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef project2_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file project2_top_utilization_synth.rpt -pb project2_top_utilization_synth.pb"
