#!/bin/bash
sudo docker exec benchmark sysbench --test=cpu --cpu-max-prime=10000 --max-time=60 run >> bench_pull.txt &
sleep 5
pid=`pgrep sysbench`
sudo perf stat -o bench_pull_perf.txt -e cache-misses,context-switches,page-faults  -p $pid sleep 60
echo benchmark done
