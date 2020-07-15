#!/bin/bash
#

vcftools --vcf ZA_final_SNPs.vcf --exclude-positions singletons.tab --recode --recode-INFO-all --out ZA_SNPs
