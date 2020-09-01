#!/bin/bash
for each in *.bam
do
bamCoverage -b ${each} -o ./bigwig/${each%merge.bam}coverage.bw \
	--normalizeUsing RPGC \
	--effectiveGenomeSize 42560769
done
