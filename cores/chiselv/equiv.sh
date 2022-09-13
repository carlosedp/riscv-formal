#!/bin/bash
set -ex
yosys -p '
	read_verilog generated/RVFI.v
	chparam -set ENABLE_MISALIGN_ADDR 0 RVFI
	prep -flatten -top RVFI
	design -stash gold

	read_verilog -D RISCV_FORMAL generated/RVFI.v
	chparam -set ENABLE_MISALIGN_ADDR 0 RVFI
	prep -flatten -top RVFI
	delete -port RVFI/rvfi_*
	design -stash gate

'
