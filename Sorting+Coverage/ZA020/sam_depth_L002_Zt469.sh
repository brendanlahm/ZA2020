#!/bin/bash
#

samtools depth ZA020_L002_Zt469_sorted.bam | awk '{x+=$3}END{print x/NR}' \
> ./Coverage/ZA020_L002_Zt469_depth_mean.txt

