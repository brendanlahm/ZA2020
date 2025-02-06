#!/bin/bash
#

## Thinning the vcf to account for LD (removing SNPs < 500bp of eachother)

vcftools --vcf SNPs4_final.recode.vcf --thin 500 --recode --recode-INFO-all --out SNPs4_thinned
