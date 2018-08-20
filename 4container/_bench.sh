#!/bin/bash

docker start b1 b2 b3 b4

docker exec b1 sysbench --test=cpu --cpu-max-prime=10000 --max-time=60 run >> b1.txt &\
docker exec b2 sysbench --test=cpu --cpu-max-prime=10000 --max-time=60 run >> b2.txt &\
docker exec b3 sysbench --test=cpu --cpu-max-prime=10000 --max-time=60 run >> b3.txt &\
docker exec b4 sysbench --test=cpu --cpu-max-prime=10000 --max-time=60 run >> b4.txt

echo benchmark done
