transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/quartus/proj/VGA/VGA.vhd}

vcom -93 -work work {D:/quartus/proj/VGA/simulation/modelsim/VGA.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  VGA_vhd_tst

add wave *
view structure
view signals
run 2 ms
