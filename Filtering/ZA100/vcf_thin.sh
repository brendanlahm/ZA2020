#!/bin/bash
#

vcftools --vcf 35_final.recode.vcf --thin 500 --recode --recode-INFO-all --out ./test/35_thinnedSNPs
