vlib work
vmap work work
vlog -sv *.sv +acc
vsim work.tb_systolic_controller
add wave *
add wave -group dut /tb_systolic_controller/dut/*
add wave -group SA /tb_systolic_controller/dut/u_core_array/*

run 10000 ns
#quit -sim


