#!/bin/bash
#

bamCoverage -b ZA020_Zt469_merge.bam -o ZA020.bw \
	--normalizeUsing RPGC \
	--effectiveGenomeSize 42964554
