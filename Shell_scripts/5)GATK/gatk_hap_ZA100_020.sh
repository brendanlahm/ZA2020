#!/bin/bash
#

## (on the cluster)
# Calling haplotypes for individual isolates

gatk --java-options "-Xmx4g" HaplotypeCaller --pcr-indel-model NONE \
   -R Za100_canu.unitigs.fasta \
   -I ZA020_merge.bam \
   -O ZA020.g.vcf.gz \
   -ploidy 1 \
   -ERC GVCF

