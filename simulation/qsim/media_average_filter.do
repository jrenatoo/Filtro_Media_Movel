onerror {quit -f}
vlib work
vlog -work work media_average_filter.vo
vlog -work work media_average_filter.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.moving_average_filter_vlg_vec_tst
vcd file -direction media_average_filter.msim.vcd
vcd add -internal moving_average_filter_vlg_vec_tst/*
vcd add -internal moving_average_filter_vlg_vec_tst/i1/*
add wave /*
run -all
