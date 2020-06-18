#!/bin/bash
for each in *.bam
do
samtools depth ${each} | awk '{x+=$3}END{print x/NR}' \
> ./Coverage/${each%sorted.bam}depth_mean.txt
done