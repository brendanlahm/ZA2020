#!/bin/bash
#

java -jar /home/lahm/software/snpEff/SnpSift.jar extractFields ZA_genotype_select.vcf.gz CHROM POS ID AF | head
