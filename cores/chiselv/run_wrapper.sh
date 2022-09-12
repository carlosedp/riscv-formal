#!/bin/bash
IMG=gcr.io/hdl-containers/formal@sha256:ff660de17fb8847f01fb33c1b4bd8bf08eebfd9e3fdaa9dd844a71f7c54b42a7

docker run --rm -it -v "$(realpath ../../)":/src -w /src/cores/"$(basename $(realpath .))" ${IMG} "$@"