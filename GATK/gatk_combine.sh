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
#SBATCH --time=48:00:00
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
   -R /home/lahm/ZA/ZA17/Za17_softmasked_for_publication.fa \
   --variant ZA020_1_S14_alt.g.vcf.gz \
   --variant ZA723_S15_alt.g.vcf.gz \
   --variant ZA724_S16_alt.g.vcf.gz \
   --variant ZA725_S17_alt.g.vcf.gz \
   --variant ZA726_S18_alt.g.vcf.gz \
   --variant ZA727_S19_alt.g.vcf.gz \
   --variant ZA728_S20_alt.g.vcf.gz \
   --variant ZA739_S1_alt.g.vcf.gz \
   --variant ZA740_S2_alt.g.vcf.gz \
   --variant ZA741_S3_alt.g.vcf.gz \
   --variant ZA742_S4_alt.g.vcf.gz \
   --variant ZA743_S5_alt.g.vcf.gz \
   --variant ZA744_S6_alt.g.vcf.gz \
   --variant ZA745_S7_alt.g.vcf.gz \
   --variant ZA748_S8_alt.g.vcf.gz \
   --variant ZA749_S9_alt.g.vcf.gz \
   --variant ZA762_S10_alt.g.vcf.gz \
   --variant ZA764_S11_alt.g.vcf.gz \
   --variant ZA769_S12_alt.g.vcf.gz \
   --variant ZA782_S13_alt.g.vcf.gz \
   --variant ST11IR_1_1_1_alt.g.vcf.gz \
   --variant ST11IR_1_10_1_alt.g.vcf.gz \
   --variant ST11IR_1_15_1_alt.g.vcf.gz \
   --variant ST11IR_1_15_2_alt.g.vcf.gz \
   --variant ST11IR_6_1_1_alt.g.vcf.gz \
   --variant ST11IR_6_1_2_alt.g.vcf.gz \
   --variant ST11IR_7_2_1_alt.g.vcf.gz \
   --variant ST11IR_7_2_4_alt.g.vcf.gz \
   --variant ST11IR_7_5_2_alt.g.vcf.gz \
   --variant ST11IR_8_1_1_alt.g.vcf.gz \
   --variant ST11IR_8_5_3_alt.g.vcf.gz \
   --variant ST11IR_11_1_1_alt.g.vcf.gz \
   --variant ST11IR_11_4_1_alt.g.vcf.gz \
   --variant STIR041.1.1_alt.g.vcf.gz \
   --variant STIR041.1.2_alt.g.vcf.gz \
   --variant STIR043.13.1_alt.g.vcf.gz \
   --variant STIR043.3.2_alt.g.vcf.gz \
   -O ZA_combined.g.vcf.gz
