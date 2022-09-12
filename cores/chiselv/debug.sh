#!/bin/bash
DOCKERARGS="run --rm -v $(PWD):/src -w /src"
DOCKERIMG="docker ${DOCKERARGS} docker.io/carlosedp/crossbuild-riscv64"
PREFIX=riscv64-linux

CC="${DOCKERIMG} ${PREFIX}-gcc"
OD="${DOCKERIMG} ${PREFIX}-objdump"

GTKWAVE="/Applications/gtkwave.app/Contents/Resources/bin/gtkwave"
if [ ! -f "$GTKWAVE" ]; then
    GTKWAVE="gtkwave"
fi

getTestStatus() {
    status=$1
    for x in checks/*/"${status}" ; do
        test -f "$x" || continue
        x=${x%/"${status}"}
        y=${x#checks/}
        echo -e "\t$y"
    done
}

if [ -z "$1" ]
then
    echo -e "[ERROR] - No test supplied, you should pass the name of the test as single argument, ex.: \n\n ./debug insn_addi_ch0"
    echo -e "\nList of test that [FAIL] during the tests:"
    getTestStatus "FAIL"
    echo -e "\nList of test that [PASS] during the tests:"
    getTestStatus "PASS"
else
    cat ./checks/"$1"/engine_0/logfile.txt
    python3 disasm.py ./checks/"$1"/engine_0/trace.vcd

    echo -e "\n\n[ASM] Disassembly of the trace.vcd file:"
    ${CC} -c disasm.s
    ${OD} -d -M numeric,no-aliases disasm.o
    ${OD} -d -M numeric,no-aliases disasm.o > ./checks/"$1"/engine_0/"$1".asm
    rm disasm.o disasm.s

    ${GTKWAVE} ./checks/"$1"/engine_0/trace.vcd checks.gtkw &
fi
