#!/bin/bash

set -e

# shellcheck disable=SC2046 # we want multple arguments here
./scripts/updateLicense.py $(git ls-files "*\.go" | \
    grep -v \
        -e thrift-gen \
        -e swagger-gen \
        -e proto-gen \
        -e model.pb.go \
        -e model.pb.gw.go \
        -e model_test.pb.go \
        -e storage_test.pb.go
)
