#!/bin/bash
#

vcftools --vcf selectSNPs.vcf --max-missing 1 --recode --recode-INFO-all --out nomissing_SNPs
