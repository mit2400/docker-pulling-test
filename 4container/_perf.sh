#!/bin/bash

docker pull tizenrt/tizenrt:1.3.1 &\
perf stat -o perf_result.txt -p 2987 sleep 60
echo perf done
