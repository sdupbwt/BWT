vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_1
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_21
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_16
vlib activehdl/blk_mem_gen_v8_4_3
vlib activehdl/mdm_v3_2_16
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_crossbar_v2_1_20

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v11_0_1 activehdl/microblaze_v11_0_1
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 activehdl/axi_gpio_v2_0_21
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 activehdl/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 activehdl/blk_mem_gen_v8_4_3
vmap mdm_v3_2_16 activehdl/mdm_v3_2_16
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 activehdl/axi_crossbar_v2_1_20

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Programy/Vivado2019_1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_1 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_microblaze_0_0_1/sim/mb_design_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_input_string_char_0/sim/mb_design_input_string_char_0.vhd" \
"../../../bd/mb_design/ip/mb_design_output_string_char_0/sim/mb_design_output_string_char_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ipshared/49cf/hdl/bwt_ip_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ipshared/49cf/src/MM_top.sv" \
"../../../bd/mb_design/ipshared/49cf/src/bwt_top.sv" \
"../../../bd/mb_design/ipshared/49cf/src/fifo.sv" \
"../../../bd/mb_design/ipshared/49cf/src/merge_sort_top.sv" \
"../../../bd/mb_design/ipshared/49cf/src/sort2elem.sv" \
"../../../bd/mb_design/ipshared/49cf/src/sort_arrays.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ipshared/49cf/hdl/bwt_ip_v1_0.v" \
"../../../bd/mb_design/ip/mb_design_bwt_ip_0_0_1/sim/mb_design_bwt_ip_0_0.v" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_dlmb_v10_0_1/sim/mb_design_dlmb_v10_0.vhd" \
"../../../bd/mb_design/ip/mb_design_ilmb_v10_0_1/sim/mb_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_dlmb_bram_if_cntlr_0_1/sim/mb_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mb_design/ip/mb_design_ilmb_bram_if_cntlr_0_1/sim/mb_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ip/mb_design_lmb_bram_0_1/sim/mb_design_lmb_bram_0.v" \

vcom -work mdm_v3_2_16 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_mdm_1_0_1/sim/mb_design_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ip/mb_design_clk_wiz_1_0_1/mb_design_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/mb_design/ip/mb_design_clk_wiz_1_0_1/mb_design_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0_1/sim/mb_design_rst_clk_wiz_1_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/c923" "+incdir+../../../../bwt_test.srcs/sources_1/bd/mb_design/ipshared/ec67/hdl" \
"../../../bd/mb_design/ip/mb_design_xbar_0_1/sim/mb_design_xbar_0.v" \
"../../../bd/mb_design/sim/mb_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

