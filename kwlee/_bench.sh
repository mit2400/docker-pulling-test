#!/bin/bash
sudo docker exec benchmark sysbench --test=cpu --cpu-max-prime=10000 --max-time=800 run >> bench_pull.txt &
sleep 5
pid=`pgrep sysbench`
sudo perf stat -o bench_pull_perf.txt -p $pid sleep 800
echo benchmark done
