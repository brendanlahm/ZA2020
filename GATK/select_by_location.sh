#!/bin/bash
#

## (on the cluster)
# Selecting SNPs from the isolates specifically for Location A (for SNP count and Pi calculations)

gatk SelectVariants \
     -R Za100_canu.unitigs.fasta \
     -V SNPs4_select.vcf \
     -sn ZA727_S19 \
     -sn ZA739_S1 \
     -sn ZA740_S2 \
     -sn ZA741_S3 \
     -sn ZA742_S4 \
     -sn ZA743_S5 \
     -sn ZA744_S6 \
     -sn ZA745_S7 \
     -sn ZA748_S8 \
     -sn ZA749_S9 \
     -O Location_A.vcf