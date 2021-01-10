#!/bin/bash
#

## Merging bam files from four runs of the newly sequenced data into a single bam file (for each individual sample)
# The first position after the -r flag is the output file (followed by the input files)

for each in *A_RG.bam
do
samtools merge -r ${each%A_RG.bam}merge.bam ${each} ${each%A_RG.bam}B_RG.bam \
${each%A_RG.bam}C_RG.bam ${each%A_RG.bam}D_RG.bam
done
