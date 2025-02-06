#!/bin/bash
#

## (on the cluster)
# Filtering the genotype vcf to include SNPs only, exclude non-variant sights & remove alleles not present in any genotype

gatk SelectVariants \
     -R Za100_canu.unitigs.fasta \
     -V ZA_genotype_SNPs4.vcf.gz \
     --select-type-to-include SNP \
     --exclude-non-variants \
     --remove-unused-alternates \
     -O SNPs4_genotype_select.vcf.gz
