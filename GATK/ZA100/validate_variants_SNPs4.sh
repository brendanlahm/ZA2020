#!/bin/bash
#

gatk ValidateVariants \
   -R /home/lahm/ZA/ZA100/Za100_canu.unitigs.fasta \
   -V ZA_genotype_SNPs4.vcf.gz
