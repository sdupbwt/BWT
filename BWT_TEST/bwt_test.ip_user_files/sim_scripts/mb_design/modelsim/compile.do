vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_21
vlib modelsim_lib/msim/microblaze_v11_0_1
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_16
vlib modelsim_lib/msim/blk_mem_gen_v8_4_3
vlib modelsim_lib/msim/mdm_v3_2_16
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_crossbar_v2_1_20

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 modelsim_lib/msim/axi_gpio_v2_0_21
vmap microblaze_v11_0_1 modelsim_lib/msim/microblaze_v11_0_1
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 modelsim_lib/msim/blk_mem_gen_v8_4_3
vmap mdm_v3_2_16 modelsim_lib/msim/mdm_v3_2_16
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 modelsim_lib/msim/axi_crossbar_v2_1_20

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mb_design/ip/mb_design_input_string_char_0/sim/mb_design_input_string_char_0.vhd" \
"../../../bd/mb_design/ip/mb_design_output_string_char_0/sim/mb_design_output_string_char_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/sim/mb_design.v" \

vcom -work microblaze_v11_0_1 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mb_design/ip/mb_design_microblaze_0_2/sim/mb_design_microblaze_0_2.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mb_design/ip/mb_design_dlmb_v10_1/sim/mb_design_dlmb_v10_1.vhd" \
"../../../bd/mb_design/ip/mb_design_ilmb_v10_1/sim/mb_design_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mb_design/ip/mb_design_dlmb_bram_if_cntlr_1/sim/mb_design_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/mb_design/ip/mb_design_ilmb_bram_if_cntlr_1/sim/mb_design_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ip/mb_design_lmb_bram_1/sim/mb_design_lmb_bram_1.v" \

vcom -work mdm_v3_2_16 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mb_design/ip/mb_design_mdm_1_1/sim/mb_design_mdm_1_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ip/mb_design_clk_wiz_1_1/mb_design_clk_wiz_1_1_clk_wiz.v" \
"../../../bd/mb_design/ip/mb_design_clk_wiz_1_1/mb_design_clk_wiz_1_1.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_1/sim/mb_design_rst_clk_wiz_1_100M_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ipshared/80da/hdl/bwt_ip_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ipshared/80da/src/MM_top.sv" \
"../../../bd/mb_design/ipshared/80da/src/bwt_top.sv" \
"../../../bd/mb_design/ipshared/80da/src/fifo.sv" \
"../../../bd/mb_design/ipshared/80da/src/merge_sort_top.sv" \
"../../../bd/mb_design/ipshared/80da/src/sort2elem.sv" \
"../../../bd/mb_design/ipshared/80da/src/sort_arrays.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ipshared/80da/hdl/bwt_ip_v1_0.v" \
"../../../bd/mb_design/ip/mb_design_bwt_ip_0_1/sim/mb_design_bwt_ip_0_1.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ip/mb_design_xbar_1/sim/mb_design_xbar_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

