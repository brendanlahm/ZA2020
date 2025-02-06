#!/bin/bash

## Running deepTools on bam files (mapped to Zt469) w/ bigwig files as an output. These can be loaded directly into IGV

for each in *bam
do
bamCoverage -b ${each} -o ./bigwig/${each%_merge.bam}.bw \
	--normalizeUsing RPGC \
	--effectiveGenomeSize 42964554
done
