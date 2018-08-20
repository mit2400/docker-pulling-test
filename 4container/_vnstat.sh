#!/bin/bash

vnstat -i eth0 -tr 60 >> vnstat_result.txt
echo vnstat done
