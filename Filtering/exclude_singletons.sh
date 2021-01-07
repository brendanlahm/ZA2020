#!/bin/bash
#

## Further filtering the hard-filtered vcf to exclude singletons prior to addressing missingness

vcftools --vcf SNPs4_select.vcf --exclude-positions file.singletons --recode --recode-INFO-all --out SNPs4_final
