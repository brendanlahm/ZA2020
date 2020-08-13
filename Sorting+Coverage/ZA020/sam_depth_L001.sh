#!/bin/bash
#

for each in *L001*bam
do
samtools depth ${each} | awk '{x+=$3}END{print x/NR}' \
> ./Coverage/${each%sorted.bam}depth_mean.txt
done
