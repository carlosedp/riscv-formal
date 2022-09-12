
RISC-V Formal proofs for **ChiselV**
================================

Quickstart guide:

First install Yosys, SymbiYosys, and the solvers or use provided `start_formal.sh` script which runs on Docker containers.
See [here](http://symbiyosys.readthedocs.io/en/latest/quickstart.html#installing) for instructions.  Then download the core, generate the formal checks and run them:

```sh
chmod +x start_formal.sh debug.sh
./start_formal.sh
```

After to check if the tests are passing you can run the shell script WITHOUT arguments that'll list which tests passed and which don't:

```sh
./debug.sh
# [FAIL] List of test that FAIL during the tests:
# insn_c_bnez_ch0
#
# [PASS] List of test that PASSED during the tests:
# insn_c_jalr_ch0
# causal_ch0
# insn_c_addi16sp_ch0
# liveness_ch0
# insn_c_and_ch0
# insn_blt_ch0
```

Then you can run the same script to see the output log and also the VCD with the waveforms that are wrong with:

```sh
./debug.sh insn_c_bnez_ch0
```

To run individual tests you can specify just the SymbiYosys script like this (using the container wrapper):

```sh
./run_wrapper.sh sby -f checks/insn_add_ch0.sby
```
