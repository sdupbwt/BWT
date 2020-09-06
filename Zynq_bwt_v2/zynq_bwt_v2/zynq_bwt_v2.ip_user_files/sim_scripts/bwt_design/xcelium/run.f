-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bwt_design/ip/bwt_design_processing_system7_0_0/sim/bwt_design_processing_system7_0_0.v" \
  "../../../bd/bwt_design/ipshared/e4bb/hdl/bwt_ip_v2_0_S00_AXI.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/bwt_design/ipshared/e4bb/src/MM_top.sv" \
  "../../../bd/bwt_design/ipshared/e4bb/src/bwt_top.sv" \
  "../../../bd/bwt_design/ipshared/e4bb/src/fifo.sv" \
  "../../../bd/bwt_design/ipshared/e4bb/src/merge_sort_top.sv" \
  "../../../bd/bwt_design/ipshared/e4bb/src/sort2elem.sv" \
  "../../../bd/bwt_design/ipshared/e4bb/src/sort_arrays.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bwt_design/ipshared/e4bb/hdl/bwt_ip_v2_0.v" \
  "../../../bd/bwt_design/ip/bwt_design_bwt_ip_0_0/sim/bwt_design_bwt_ip_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bwt_design/ip/bwt_design_xbar_0/sim/bwt_design_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bwt_design/ip/bwt_design_rst_ps7_0_100M_0/sim/bwt_design_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_21 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bwt_design/ip/bwt_design_axi_gpio_0_0/sim/bwt_design_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../zynq_bwt_v2.srcs/sources_1/bd/bwt_design/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bwt_design/ip/bwt_design_auto_pc_0/sim/bwt_design_auto_pc_0.v" \
  "../../../bd/bwt_design/sim/bwt_design.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

