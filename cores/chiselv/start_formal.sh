#!/bin/bash
IMG=gcr.io/hdl-containers/formal@sha256:ff660de17fb8847f01fb33c1b4bd8bf08eebfd9e3fdaa9dd844a71f7c54b42a7
# Newer images have a bug: https://github.com/YosysHQ/sby/issues/216

# Uncomment below to build new core .v
# make -C ../../../chiselv rvfi
# cp -R ../../../chiselv/generated_rvfi/*.v .
rm -rf checks
docker run --rm -it -v "$(realpath ../../)":/src -w /src/cores/"$(basename $(realpath .))" ${IMG}  python3 ../../checks/genchecks.py
docker run --rm -it -v "$(realpath ../../)":/src -w /src/cores/"$(basename $(realpath .))" ${IMG}  make -C checks -j"$(nproc)"
