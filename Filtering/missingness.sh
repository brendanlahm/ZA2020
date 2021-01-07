#!/bin/bash
#

## Filtering by requiring SNPs to have a genotyping rate > 90% prior to running SplitsTree (100% for LD decay analysis)

vcftools --vcf SNPs4_final.recode.vcf --max-missing 0.9 --recode --recode-INFO-all --out SNPs4_10per_missing
