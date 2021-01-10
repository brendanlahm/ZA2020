#!/bin/bash

## Calculating depth of coverage means for previously sorted bam files & outputting them into text files

for each in *.bam
do
samtools depth ${each} | awk '{x+=$3}END{print x/NR}' \
> ${each%sorted.bam}depth_mean.txt
done
