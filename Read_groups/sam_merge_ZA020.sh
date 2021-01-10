#!/bin/bash
#

## Merging bam files from assembled/unassembled reads of Za20 into a single bam file
# The first position after the -r flag is the output file (followed by the 4 input files)

samtools merge -r ZA020_merge.bam ZA020_L001_Za100_RG.bam \
ZA020_L001_unassembled_Za100_RG.bam \
ZA020_L002_Za100_RG.bam ZA020_L002_unassembled_Za100_RG.bam
