#!/bin/bash
#

vcftools --vcf 35_thinnedSNPs.recode.vcf --SNPdensity 5000 --haploid --out 35_thinned
