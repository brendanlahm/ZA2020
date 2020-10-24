#!/bin/bash
#

vcftools --vcf SNPs4_final.recode.vcf --max-missing 0.9 --recode --recode-INFO-all --out SNPs4_10per_missing
