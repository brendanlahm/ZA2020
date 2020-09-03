#!/bin/bash
#

java -jar /home/lahm/software/snpEff/SnpSift.jar extractFields \
SNPs4_genotype_select.vcf.gz CHROM POS DP MQ QD > SNPs4_genotype_select.tab
