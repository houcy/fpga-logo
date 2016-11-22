transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/VGA_Audio_PLL.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/Reset_Delay.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/skeleton.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/PS2_Interface.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/PS2_Controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/pll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/imem.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/Hexadecimal_To_Seven_Segment.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/dmem.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/Altera_UP_PS2_Data_In.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/Altera_UP_PS2_Command_Out.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/vga_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/video_sync_generator.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/img_index.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/img_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/processor_as577.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src/db {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/db/pll_altpll.v}
vlog -sv -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/lcd.sv}

vlog -vlog01compat -work work +incdir+C:/Users/Aditya\ Srinivasan/Desktop/fpga-logo/src {C:/Users/Aditya Srinivasan/Desktop/fpga-logo/src/shift8bitena_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  shift8bitena_tb

add wave *
view structure
view signals
run -all