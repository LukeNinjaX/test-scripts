#!/bin/bash

for ((i=1; i<=100000; i++))
do
    echo -n "$(date)  " >> memory_log.txt;
    # smem -P artelad --no-header -c "name uss" >> memory_log.txt
done
