#!/bin/bash
DOCKERARGS="run --rm -v $(PWD):/src -w /src"
DOCKERIMG="docker ${DOCKERARGS} docker.io/carlosedp/crossbuild-rv32i"
PREFIX=riscv32-unknown-elf

CC="${DOCKERIMG} ${PREFIX}-gcc"
OD="${DOCKERIMG} ${PREFIX}-objdump"

GTKWAVE="/Applications/gtkwave.app/Contents/Resources/bin/gtkwave"
if [ ! -f "$GTKWAVE" ]; then
    GTKWAVE="gtkwave"
fi

if [ -z "$1" ]
then
    echo -e "[ERROR] - No test supplied, you should pass the name of the test as single argument, ex.: \n\n ./debug insn_addi_ch0"
    echo -e "\n\n[FAIL] List of test that FAIL during the tests:"
    cd checks
    find . -name "FAIL" -printf "%h\n" | sed "s|^\./||"
    cd ../
    echo -e "\n\n[PASS] List of test that PASSED during the tests:"
    cd checks
    find . -name "PASS" -printf "%h\n" | sed "s|^\./||"
    cd ../
else
    cat ./checks/"$1"/engine_0/logfile.txt
    python3 disasm.py ./checks/"$1"/engine_0/trace.vcd

    ${CC} -c disasm.s
    ${OD} -d -M numeric,no-aliases disasm.o

    ${GTKWAVE} ./checks/"$1"/engine_0/trace.vcd checks.gtkw &
fi
