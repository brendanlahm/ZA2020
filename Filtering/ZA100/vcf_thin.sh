#!/bin/bash
#

vcftools --vcf 35_final.recode.vcf --thin 4000 --recode --recode-INFO-all --out ./test/35_thinnedSNPs
