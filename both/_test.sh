#!/bin/bash

./_perf.sh & ./_vnstat.sh & ./_iostat.sh & ./_bench.sh

sudo docker rmi tizenrt/tizenrt:1.3.1
