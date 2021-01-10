#!/bin/bash
#

## Producing an index file for final bam files (after assigning read groups & merging)

for each in *.bam
do
samtools index ${each}
done
