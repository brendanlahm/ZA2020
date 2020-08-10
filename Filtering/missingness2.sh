#!/bin/bash
#

vcftools --vcf selectSNPs.vcf --max-missing 0.9 --recode --recode-INFO-all --out ./missingness/10per_missingSNPs
