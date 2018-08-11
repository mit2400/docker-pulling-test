#!/bin/bash


sudo perf stat --pid 1503 >> bench_pull_perf.txt
docker exec benchmark sysbench --test=cpu --cpu-max-prime=10000 run >> bench_pull.txt
echo benchmark done
