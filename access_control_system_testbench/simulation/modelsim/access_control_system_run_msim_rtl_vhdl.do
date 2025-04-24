transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/PERSONAL/AEGEAN/YEAR_1_SEMESTER_B/1_Computer_Architecture/ergasia_6mhnou/final/access_control_system.vhdl}

vcom -93 -work work {E:/PERSONAL/AEGEAN/YEAR_1_SEMESTER_B/1_Computer_Architecture/ergasia_6mhnou/access_control_system_testbench/../final/access_control_system.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  access_control_system_testbench

add wave *
view structure
view signals
run -all
