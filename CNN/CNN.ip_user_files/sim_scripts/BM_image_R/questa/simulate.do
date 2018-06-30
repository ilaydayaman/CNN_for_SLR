onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BM_image_R_opt

do {wave.do}

view wave
view structure
view signals

do {BM_image_R.udo}

run -all

quit -force
