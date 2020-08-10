#!/bin/bash
#

vcftools --vcf 36_highSNPs2.vcf --exclude-positions file.singletons --recode --recode-INFO-all --out 36_finalSNPs
