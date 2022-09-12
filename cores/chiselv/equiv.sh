#!/bin/bash
set -ex
yosys -p '
	read_verilog generated/RVFITop.v
	chparam -set ENABLE_MISALIGN_ADDR 0 RVFITop
	prep -flatten -top RVFITop
	design -stash gold

	read_verilog -D RISCV_FORMAL generated/RVFITop.v
	chparam -set ENABLE_MISALIGN_ADDR 0 RVFITop
	prep -flatten -top RVFITop
	delete -port RVFITop/rvfi_*
	design -stash gate

'
