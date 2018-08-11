#!/bin/bench

sysbench --test=cpu --cpu-max-prime==10000 run >> bench_alone.txt
