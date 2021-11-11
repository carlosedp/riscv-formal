#!/bin/bash
rm -rf checks
# mkdir generated
# pushd ../../..
# sbt "runMain chiselv.RVFITop" || exit
# popd || exit
# cp -R ../../../*.v ./generated
docker run --rm -v "$(realpath ../../)":/src -w /src/cores/chiselv hdlc/formal python3 ../../checks/genchecks.py
docker run --rm -v "$(realpath ../../)":/src -w /src/cores/chiselv hdlc/formal make -C checks -j"$(nproc)"
