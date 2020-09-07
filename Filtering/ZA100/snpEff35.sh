#!/bin/bash
#

java -jar /home/lahm/software/snpEff/SnpSift.jar extractFields \
35_genotype_select.vcf.gz CHROM POS DP MQ QD > 35_genotype_select.tab
