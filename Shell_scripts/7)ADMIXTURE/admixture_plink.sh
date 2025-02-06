#!/bin/bash
#

## Producing a bim file from the vcf filtered on LD

/plink_linux_x86_64_20200616/plink --vcf SNPs4_thinned.recode.vcf --const-fid 0 --allow-extra-chr --keep-allele-order --make-bed --out SNPs4_leafy

### Removing the "tig" prefix because the ADMIXTURE software complains if the contig names are not all numeric only

awk '{gsub(/^tig/,""); print}' SNPs4_leafy.bim > SNPs4_leafy2.bim

#### Running ADMIXTURE (this was done for K=1-6)

/admixture_linux-1.3.0/admixture SNPs4_leafy.bed 6 --haploid="*"

##### Analyzing the cross-validation error output files

grep -h CV log*.out
