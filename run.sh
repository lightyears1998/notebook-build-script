#!/usr/bin/env bash

{
    echo ""
    echo "[env]"
    printenv

    echo ""
    echo "[run]"
    ./build.sh
} |& tee ./run.log
