onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mb_design_opt

do {wave.do}

view wave
view structure
view signals

do {mb_design.udo}

run -all

quit -force
