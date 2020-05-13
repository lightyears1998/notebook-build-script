#!/usr/bin/env bash

run () {
    echo ""
    echo "[env]"
    printenv

    echo ""
    echo "[run]"
    ./build.sh
}

run |& tee ./run.log
