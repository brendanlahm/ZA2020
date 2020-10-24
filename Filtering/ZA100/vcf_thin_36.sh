#!/bin/bash
#

vcftools --vcf SNPs4_final.recode.vcf --thin 500 --recode --recode-INFO-all --out SNPs4_thinned
