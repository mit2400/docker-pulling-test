#!/bin/bash


sudo perf stat -o bench_pull_perf.txt --pid 2143 & docker exec benchmark sysbench --test=cpu --cpu-max-prime=10000 run >> bench_pull.txt

echo benchmark done
