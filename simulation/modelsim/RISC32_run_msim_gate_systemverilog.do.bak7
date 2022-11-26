transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {RISC32.svo}

vlog -sv -work work +incdir+E:/Projects/RISC\ V/Quartus_projects/RISC-V\ single\ Cycle/Testbenches {E:/Projects/RISC V/Quartus_projects/RISC-V single Cycle/Testbenches/testbench_ALU.sv}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench_ALU

add wave *
view structure
view signals
run -all
