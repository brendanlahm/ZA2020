#!/bin/bash

## Running deepTools on bam files (mapped to Za100) w/ bigwig files as an output. These can be loaded directly into IGV

for each in *.bam
do
bamCoverage -b ${each} -o ./bigwig/${each%merge.bam}coverage.bw \
	--normalizeUsing RPGC \
	--effectiveGenomeSize 42560769
done
