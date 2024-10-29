#!/bin/bash
clear

CLS=$(clear)
while true; do
echo $CLS $(date +%H%M%S | awk '
BEGIN {
split ("0000,0001,0010,0011,0100,0101,0110,0111,1000,1001", bin, ",")
}
{
for (i = 1; i <= 6; i++) {
printf "%s ", bin[substr($1, i, 1) + 1]
}
}')
sleep 1
done

