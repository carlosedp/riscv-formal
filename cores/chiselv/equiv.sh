#!/bin/bash
set -ex
yosys -p '
	read_verilog generated/Toplevel.v
	read_verilog generated/PLL.v
	read_verilog generated/GPIOInOut.v
	chparam -set ENABLE_MISALIGN_ADDR 0 Toplevel
	prep -flatten -top Toplevel
	design -stash gold

	read_verilog generated/PLL.v
	read_verilog generated/GPIOInOut.v
	read_verilog -D RISCV_FORMAL generated/Toplevel.v
	chparam -set ENABLE_MISALIGN_ADDR 0 Toplevel
	prep -flatten -top Toplevel
	delete -port Toplevel/rvfi_*
	design -stash gate

'
