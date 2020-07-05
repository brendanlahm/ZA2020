#!/bin/bash
#

java -jar /home/lahm/software/snpEff/SnpSift.jar extractFields \
ZA_genotype_select.vcf.gz CHROM POS DP MQ QD > ZA_genotype_select.tab
