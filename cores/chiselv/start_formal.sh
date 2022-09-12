#!/bin/bash
# rm -rf checks disasm.o disasm.s RVFITop.v
# make -C ../../.. rvfi
# cp -R ../../../generated_rvfi/*.v .
rm -rf checks
docker run --rm -it -v "$(realpath ../../)":/src -w /src/cores/"$(basename $(realpath .))" gcr.io/hdl-containers/formal python3 ../../checks/genchecks.py
docker run --rm -it -v "$(realpath ../../)":/src -w /src/cores/"$(basename $(realpath .))" gcr.io/hdl-containers/formal make -C checks -j"$(nproc)"
