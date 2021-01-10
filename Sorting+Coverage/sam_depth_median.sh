#!/bin/bash
#

## Calculating depth of coverage medians for previously sorted bam files & outputting them into text files

for each in *.bam
do
samtools depth ${each} | sort -nk3 | awk ' { a[i++]=$3; } END { print a[int(i/2)]; }' \
> ${each%sorted.bam}depth_median.txt
done
