#!/bin/bash

if [[ -z $1 ]]; then
    echo "Please supply the NONMEM zip password as 'build.sh PASSWORD'"
    exit 1
fi

docker build -f 73.Dockerfile --tag nonmem --build-arg NONMEM_ZIP_PASS_73=$1 .
