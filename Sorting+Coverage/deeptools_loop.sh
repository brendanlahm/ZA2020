#!/bin/bash
for each in *.bam
do
bamCoverage -b ${each} -o ./bigwig/${each%RG.bam}coverage.bw \
	--normalizeUsing RPGC \
	--effectiveGenomeSize 42560769
done
