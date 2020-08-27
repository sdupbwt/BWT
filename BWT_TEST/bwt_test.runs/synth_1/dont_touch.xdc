# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# Block Designs: bd/mb_design/mb_design.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design || ORIG_REF_NAME==mb_design} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_microblaze_0_0_1/mb_design_microblaze_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_microblaze_0_0 || ORIG_REF_NAME==mb_design_microblaze_0_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_input_string_char_0/mb_design_input_string_char_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_input_string_char_0 || ORIG_REF_NAME==mb_design_input_string_char_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_output_string_char_0/mb_design_output_string_char_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_output_string_char_0 || ORIG_REF_NAME==mb_design_output_string_char_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_bwt_ip_0_0_1/mb_design_bwt_ip_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_bwt_ip_0_0 || ORIG_REF_NAME==mb_design_bwt_ip_0_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_dlmb_v10_0_1/mb_design_dlmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_dlmb_v10_0 || ORIG_REF_NAME==mb_design_dlmb_v10_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_ilmb_v10_0_1/mb_design_ilmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_ilmb_v10_0 || ORIG_REF_NAME==mb_design_ilmb_v10_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_dlmb_bram_if_cntlr_0_1/mb_design_dlmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_dlmb_bram_if_cntlr_0 || ORIG_REF_NAME==mb_design_dlmb_bram_if_cntlr_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_ilmb_bram_if_cntlr_0_1/mb_design_ilmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_ilmb_bram_if_cntlr_0 || ORIG_REF_NAME==mb_design_ilmb_bram_if_cntlr_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_lmb_bram_0_1/mb_design_lmb_bram_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_lmb_bram_0 || ORIG_REF_NAME==mb_design_lmb_bram_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_mdm_1_0_1/mb_design_mdm_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_mdm_1_0 || ORIG_REF_NAME==mb_design_mdm_1_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_clk_wiz_1_0_1/mb_design_clk_wiz_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_clk_wiz_1_0 || ORIG_REF_NAME==mb_design_clk_wiz_1_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0_1/mb_design_rst_clk_wiz_1_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==mb_design_rst_clk_wiz_1_100M_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_microblaze_0_axi_periph_0_1/mb_design_microblaze_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_microblaze_0_axi_periph_0 || ORIG_REF_NAME==mb_design_microblaze_0_axi_periph_0} -quiet] -quiet

# IP: bd/mb_design/ip/mb_design_xbar_0_1/mb_design_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==mb_design_xbar_0 || ORIG_REF_NAME==mb_design_xbar_0} -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_microblaze_0_0_1/mb_design_microblaze_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_microblaze_0_0 || ORIG_REF_NAME==mb_design_microblaze_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_microblaze_0_0_1/mb_design_microblaze_0_0_ooc_debug.xdc

# XDC: bd/mb_design/ip/mb_design_input_string_char_0/mb_design_input_string_char_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_input_string_char_0 || ORIG_REF_NAME==mb_design_input_string_char_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_input_string_char_0/mb_design_input_string_char_0_ooc.xdc

# XDC: bd/mb_design/ip/mb_design_input_string_char_0/mb_design_input_string_char_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_input_string_char_0 || ORIG_REF_NAME==mb_design_input_string_char_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_output_string_char_0/mb_design_output_string_char_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_output_string_char_0 || ORIG_REF_NAME==mb_design_output_string_char_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_output_string_char_0/mb_design_output_string_char_0_ooc.xdc

# XDC: bd/mb_design/ip/mb_design_output_string_char_0/mb_design_output_string_char_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_output_string_char_0 || ORIG_REF_NAME==mb_design_output_string_char_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_dlmb_v10_0_1/mb_design_dlmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_dlmb_v10_0 || ORIG_REF_NAME==mb_design_dlmb_v10_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_ilmb_v10_0_1/mb_design_ilmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_ilmb_v10_0 || ORIG_REF_NAME==mb_design_ilmb_v10_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_lmb_bram_0_1/mb_design_lmb_bram_0_ooc.xdc

# XDC: bd/mb_design/ip/mb_design_mdm_1_0_1/mb_design_mdm_1_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_mdm_1_0 || ORIG_REF_NAME==mb_design_mdm_1_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_mdm_1_0_1/mb_design_mdm_1_0_ooc_trace.xdc

# XDC: bd/mb_design/ip/mb_design_clk_wiz_1_0_1/mb_design_clk_wiz_1_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_clk_wiz_1_0 || ORIG_REF_NAME==mb_design_clk_wiz_1_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_clk_wiz_1_0_1/mb_design_clk_wiz_1_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_clk_wiz_1_0 || ORIG_REF_NAME==mb_design_clk_wiz_1_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_clk_wiz_1_0_1/mb_design_clk_wiz_1_0_ooc.xdc

# XDC: bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0_1/mb_design_rst_clk_wiz_1_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==mb_design_rst_clk_wiz_1_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/ip/mb_design_rst_clk_wiz_1_100M_0_1/mb_design_rst_clk_wiz_1_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==mb_design_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==mb_design_rst_clk_wiz_1_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/mb_design/mb_design_ooc.xdc