#!/bin/bash
top -b -n 1 | grep '%Cpu' | awk '{print $2, $4, $6}' | while read US SY NI; do
    SUM=$(echo "$US + $SY + $NI" | bc)
    echo "Total CPU Usage: $SUM%"
done
