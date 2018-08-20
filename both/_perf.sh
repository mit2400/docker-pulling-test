#!/bin/bash

perf stat -o perf_result.txt docker pull tizenrt/tizenrt:1.3.1 sleep 60
echo perf done
