-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/bwt/ip/bwt_processing_system7_0_0/sim/bwt_processing_system7_0_0.v" \
  "../../../bd/bwt/ipshared/3c1f/hdl/bwt_ip_v1_0_S00_AXI.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/bwt/ipshared/3c1f/src/MM_top.sv" \
  "../../../bd/bwt/ipshared/3c1f/src/bwt_top.sv" \
  "../../../bd/bwt/ipshared/3c1f/src/fifo.sv" \
  "../../../bd/bwt/ipshared/3c1f/src/merge_sort_top.sv" \
  "../../../bd/bwt/ipshared/3c1f/src/sort2elem.sv" \
  "../../../bd/bwt/ipshared/3c1f/src/sort_arrays.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/bwt/ipshared/3c1f/hdl/bwt_ip_v1_0.v" \
  "../../../bd/bwt/ip/bwt_bwt_ip_0_0/sim/bwt_bwt_ip_0_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_21 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/bwt/ip/bwt_axi_gpio_0_0/sim/bwt_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_20 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/bwt/ip/bwt_xbar_0/sim/bwt_xbar_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/bwt/ip/bwt_rst_ps7_0_100M_0/sim/bwt_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../bwt_test.srcs/sources_1/bd/bwt/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/bwt/ip/bwt_auto_pc_0/sim/bwt_auto_pc_0.v" \
  "../../../bd/bwt/sim/bwt.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

