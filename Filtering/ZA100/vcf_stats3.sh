#!/bin/bash
#

vcftools --vcf 35_thinnedSNPs.recode.vcf --window-pi 5000 --haploid --out 35_thinned
