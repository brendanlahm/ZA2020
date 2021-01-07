#!/bin/bash
#

## (on the cluster)
# Hard-filtering the SNP-only vcf on quality

gatk VariantFiltration \
-R Za100_canu.unitigs.fasta \
-V SNPs4_genotype_select.vcf \
-O SNPs4_high.vcf \
--filter-name "high_filter" \
--filter-expression "MQ < 55.0 || QD < 20.0"
