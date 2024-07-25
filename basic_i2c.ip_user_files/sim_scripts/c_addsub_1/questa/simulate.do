onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib c_addsub_1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {c_addsub_1.udo}

run 1000ns

quit -force
