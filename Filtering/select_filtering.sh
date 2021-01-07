#!/bin/bash
#

## Selecting everything remaining from the hard-filtering step by removing the SNPs marked for not meeting quality standards (MQ & QD)

gatk SelectVariants \
     -R Za100_canu.unitigs.fasta \
     -V SNPs4_high.vcf \
     --exclude-filtered \
     -O SNPs4_select.vcf
