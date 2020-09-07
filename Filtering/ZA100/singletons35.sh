#!/bin/bash
#

vcftools --vcf 35_select.vcf --exclude-positions file.singletons --recode --recode-INFO-all --out 35_final
