connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248492416"} -index 0
loadhw -hw C:/Users/toshiba/Desktop/IV/sdup/projekt/BWT/BWT_TEST/bwt_test.sdk/mb_design_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Zed 210248492416"} -index 1
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Zed 210248492416"} -index 1
dow C:/Users/toshiba/Desktop/IV/sdup/projekt/BWT/BWT_TEST/bwt_test.sdk/bwt_test_2/Debug/bwt_test_2.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Zed 210248492416"} -index 1
con
