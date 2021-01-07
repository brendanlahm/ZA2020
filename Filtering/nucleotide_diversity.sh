#!/bin/bash
#

## Calculating nucleotide diversity over 5Kb overlapping windows

vcftools --vcf SNPs4_select.vcf --window-pi 5000 --haploid --out SNPs4_pi
