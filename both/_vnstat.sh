#!/bin/bash

for i in {1..80}
do
	vnstat -i eth0 -tr 10 >> vnstat_result.txt
done

echo vnstat done
