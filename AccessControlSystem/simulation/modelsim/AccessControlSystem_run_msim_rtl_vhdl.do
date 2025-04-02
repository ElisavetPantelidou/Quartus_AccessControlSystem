transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/PERSONAL/AEGEAN/YEAR_1_SEMESTER_B/1_Computer_Architecture/ergasia_6mhnou/code02.vhdl}

vcom -93 -work work {E:/PERSONAL/AEGEAN/YEAR_1_SEMESTER_B/1_Computer_Architecture/ergasia_6mhnou/AccessControlSystem/../AccessControlSystem_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  AccessControlSystem_tb.vhd

add wave *
view structure
view signals
run -all
