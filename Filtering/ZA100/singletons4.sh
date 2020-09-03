#!/bin/bash
#

vcftools --vcf SNPs4_select.vcf --exclude-positions file.singletons --recode --recode-INFO-all --out SNPs4_final
