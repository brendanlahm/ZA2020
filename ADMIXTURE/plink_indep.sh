#!/bin/bash
#

/home/lahm/software/plink_linux_x86_64_20200616/plink --vcf 36_finalSNPs.recode.vcf --const-fid 0 --allow-extra-chr --make-bed --out ./test/36_funSNPs

/home/lahm/software/plink_linux_x86_64_20200616/plink --bfile 36_funSNPs --allow-extra-chr --recode12 --out ./recode/36_funSNPs.recode12

###############################################

/home/lahm/software/plink_linux_x86_64_20200616/plink --file 36_finalSNPs.recode12 --make-bed --out ./test2/36_friendlySNPs

############################################### Only test3 files were used prior to running ADMIXTURE
 
/home/lahm/software/plink_linux_x86_64_20200616/plink --vcf 36_finalSNPs.recode.vcf --chr-set -21 --const-fid 0 --allow-extra-chr --keep-allele-order --make-bed --out ./test3/36_leafySNPs

### Running --indep and ending up w/ ~ 30k SNPs

/home/lahm/software/plink_linux_x86_64_20200616/plink --bfile 36_leafySNPs --indep-pairwise 15kb 1 0.6 --chr-set -21 --allow-extra-chr

/home/lahm/software/plink_linux_x86_64_20200616/plink --bfile 36_leafySNPs --chr-set -21 --allow-extra-chr --extract plink.prune.in --make-bed --out 36_leafySNPs.pruned --recode

### Removing the "unitig" prefix because the ADMIXTURE software complains if the contig names are not all numeric only

awk '{gsub(/^unitig_/,""); print}' 36_leafySNPs.pruned.bim > 36_leafySNPs2.pruned.bim

### Running ADMIXTURE (this was done for K=1-6)

/home/lahm/software/admixture_linux-1.3.0/admixture 36_leafySNPs.pruned.bed 1 --haploid="*"

### Analyzing the cross-validation error output files

grep -h CV log*.out
