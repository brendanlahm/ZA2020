#!/bin/bash
#

## validating vcf files to check for errors

gatk ValidateVariants \
   -R Za100_canu.unitigs.fasta \
   -V ZA_genotype_SNPs4.vcf.gz
