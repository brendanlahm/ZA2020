#!/bin/bash
#

## (on the cluster)
# Genotyping the combined g.vcf

gatk GenotypeGVCFs \
   -R Za100_canu.unitigs.fasta \
   -V ZA_combined_SNPs4.g.vcf.gz \
   -O ZA_genotype_SNPs4.vcf.gz
