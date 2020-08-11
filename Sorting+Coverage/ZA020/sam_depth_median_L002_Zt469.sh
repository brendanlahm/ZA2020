#!/bin/bash
#

samtools depth ZA020_L002_Zt469_sorted.bam | sort -nk3 | awk ' { a[i++]=$3; } END { print a[int(i/2)]; }' \
> ./Coverage/ZA020_L002_Zt469_depth_median.txt