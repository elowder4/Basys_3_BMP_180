transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+c_addsub_1  -L xpm -L xbip_utils_v3_0_11 -L c_reg_fd_v12_0_7 -L xbip_dsp48_wrapper_v3_0_5 -L xbip_pipe_v3_0_7 -L xbip_dsp48_addsub_v3_0_7 -L xbip_addsub_v3_0_7 -L c_addsub_v12_0_16 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.c_addsub_1 xil_defaultlib.glbl

do {c_addsub_1.udo}

run 1000ns

endsim

quit -force
