#!/bin/bash
#

for each in *.bam
do
samtools index ${each}
done
