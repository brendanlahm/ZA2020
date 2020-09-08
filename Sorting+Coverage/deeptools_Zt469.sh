#!/bin/bash
for each in *bam
do
bamCoverage -b ${each} -o ./bigwig/${each%_sorted_Zt469.bam}.bw \
	--normalizeUsing RPGC \
	--effectiveGenomeSize 42964554
done
