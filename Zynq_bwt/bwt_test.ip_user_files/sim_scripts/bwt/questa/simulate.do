onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bwt_opt

do {wave.do}

view wave
view structure
view signals

do {bwt.udo}

run -all

quit -force
