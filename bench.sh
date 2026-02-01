#!/bin/bash

T=$(date +"%Y%m%d_%H%M%S")
mkdir -p bench_log

make marker > bench_log/bench_${T}.log 2>&1