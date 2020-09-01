#!/bin/bash
#

bamCoverage -b ZA020_merge.bam -o ZA020_coverage.bw \
	--normalizeUsing RPGC \
	--effectiveGenomeSize 42560769
