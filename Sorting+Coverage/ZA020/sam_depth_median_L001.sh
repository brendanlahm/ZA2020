#!/bin/bash
#

for each in *L001*bam
do
samtools depth ${each} | sort -nk3 | awk ' { a[i++]=$3; } END { print a[int(i/2)]; }' \
> ./Coverage/${each%sorted.bam}depth_median.txt
done
