-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_21 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_input_string_char_0/sim/mb_design_input_string_char_0.vhd" \
  "../../../bd/mb_design/ip/mb_design_output_string_char_0/sim/mb_design_output_string_char_0.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_1 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_microblaze_0_2/sim/mb_design_microblaze_0_2.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_9 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_dlmb_v10_1/sim/mb_design_dlmb_v10_1.vhd" \
  "../../../bd/mb_design/ip/mb_design_ilmb_v10_1/sim/mb_design_ilmb_v10_1.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_16 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_dlmb_bram_if_cntlr_1/sim/mb_design_dlmb_bram_if_cntlr_1.vhd" \
  "../../../bd/mb_design/ip/mb_design_ilmb_bram_if_cntlr_1/sim/mb_design_ilmb_bram_if_cntlr_1.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_lmb_bram_1/sim/mb_design_lmb_bram_1.v" \
-endlib
-makelib xcelium_lib/mdm_v3_2_16 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_mdm_1_1/sim/mb_design_mdm_1_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_clk_wiz_1_1/mb_design_clk_wiz_1_1_clk_wiz.v" \
  "../../../bd/mb_design/ip/mb_design_clk_wiz_1_1/mb_design_clk_wiz_1_1.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_1/sim/mb_design_rst_clk_wiz_1_100M_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ipshared/c7e0/hdl/bwt_ip_v1_0_S00_AXI.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/mb_design/ipshared/c7e0/src/MM_top.sv" \
  "../../../bd/mb_design/ipshared/c7e0/src/bwt_top.sv" \
  "../../../bd/mb_design/ipshared/c7e0/src/fifo.sv" \
  "../../../bd/mb_design/ipshared/c7e0/src/merge_sort_top.sv" \
  "../../../bd/mb_design/ipshared/c7e0/src/sort2elem.sv" \
  "../../../bd/mb_design/ipshared/c7e0/src/sort_arrays.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ipshared/c7e0/hdl/bwt_ip_v1_0.v" \
  "../../../bd/mb_design/ip/mb_design_bwt_ip_0_1/sim/mb_design_bwt_ip_0_1.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_xbar_1/sim/mb_design_xbar_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/ip/mb_design_axi_gpio_0_0_1/sim/mb_design_axi_gpio_0_0.vhd" \
  "../../../bd/mb_design/ip/mb_design_axi_gpio_1_0/sim/mb_design_axi_gpio_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/mb_design/sim/mb_design.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

