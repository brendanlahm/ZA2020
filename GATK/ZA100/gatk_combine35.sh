#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=combine
#  how many cpus are requested
#SBATCH --ntasks=1
#  run on one node, important if you have more than 1 ntasks
#SBATCH --nodes=1
#  maximum walltime
#SBATCH --time=2:00:00
#  maximum requested memory
#SBATCH --mem=20G
#  write std out and std error to these files
#SBATCH --error=essai_aln_280.sterr
#SBATCH --output=essai_aln_280.stout
#  send a mail for job start, end, fail, etc.
#SBATCH --mail-type=NONE
#SBATCH --mail-user=lahm@evolbio.mpg.de
#  which partition?
#  there are global,testing,highmem,standard,fast
#SBATCH --partition=standard

gatk CombineGVCFs \
   -R /home/lahm/ZA/ZA100/Za100_canu.unitigs.fasta \
   --variant ZA020.g.vcf.gz \
   --variant ZA723_S15.g.vcf.gz \
   --variant ZA724_S16.g.vcf.gz \
   --variant ZA725_S17.g.vcf.gz \
   --variant ZA726_S18.g.vcf.gz \
   --variant ZA727_S19.g.vcf.gz \
   --variant ZA728_S20.g.vcf.gz \
   --variant ZA739_S1.g.vcf.gz \
   --variant ZA740_S2.g.vcf.gz \
   --variant ZA741_S3.g.vcf.gz \
   --variant ZA742_S4.g.vcf.gz \
   --variant ZA743_S5.g.vcf.gz \
   --variant ZA744_S6.g.vcf.gz \
   --variant ZA745_S7.g.vcf.gz \
   --variant ZA748_S8.g.vcf.gz \
   --variant ZA749_S9.g.vcf.gz \
   --variant ZA762_S10.g.vcf.gz \
   --variant ZA764_S11.g.vcf.gz \
   --variant ZA769_S12.g.vcf.gz \
   --variant ZA782_S13.g.vcf.gz \
   --variant ST11IR_1_1_1_GTGAAA_L002_RG.g.vcf.gz \
   --variant ST11IR_1_10_1_CTTGTA_L001_RG.g.vcf.gz \
   --variant ST11IR_1_15_1_GTTTCG_L002_RG.g.vcf.gz \
   --variant ST11IR_1_15_2_GTGGCC_L002_RG.g.vcf.gz \
   --variant ST11IR_6_1_1_AGTCAA_L001_RG.g.vcf.gz \
   --variant ST11IR_6_1_2_CGTACG_L002_RG.g.vcf.gz \
   --variant ST11IR_7_2_1_GAGTGG_L002_RG.g.vcf.gz \
   --variant ST11IR_7_2_4_ACTGAT_L002_RG.g.vcf.gz \
   --variant ST11IR_7_5_2_AGTTCC_L001_RG.g.vcf.gz \
   --variant ST11IR_8_1_1_ATGTCA_L001_RG.g.vcf.gz \
   --variant ST11IR_8_5_3_ATTCCT_L002_RG.g.vcf.gz \
   --variant ST11IR_11_1_1_RG.g.vcf.gz \
   --variant ST11IR_11_4_1_GGCTAC_L001_RG.g.vcf.gz \
   --variant STIR041.1.1.g.vcf.gz \
   --variant STIR043.3.2.g.vcf.gz \
   -O ./35/35_combined_SNPs.g.vcf.gz
