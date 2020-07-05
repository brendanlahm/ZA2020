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
#SBATCH --time=15:00:00
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
#SBATCH --partition=global

gatk CombineGVCFs \
   -R /home/lahm/ZA/ZA17/Za17_softmasked_for_publication.fa \
   --variant ZA020_1_S14_merge.g.vcf.gz \
   --variant ZA723_S15_merge.g.vcf.gz \
   --variant ZA724_S16_merge.g.vcf.gz \
   --variant ZA725_S17_merge.g.vcf.gz \
   --variant ZA726_S18_merge.g.vcf.gz \
   --variant ZA727_S19_merge.g.vcf.gz \
   --variant ZA728_S20_merge.g.vcf.gz \
   --variant ZA739_S1_merge.g.vcf.gz \
   --variant ZA740_S2_merge.g.vcf.gz \
   --variant ZA741_S3_merge.g.vcf.gz \
   --variant ZA742_S4_merge.g.vcf.gz \
   --variant ZA743_S5_merge.g.vcf.gz \
   --variant ZA744_S6_merge.g.vcf.gz \
   --variant ZA745_S7_merge.g.vcf.gz \
   --variant ZA748_S8_merge.g.vcf.gz \
   --variant ZA749_S9_merge.g.vcf.gz \
   --variant ZA762_S10_merge.g.vcf.gz \
   --variant ZA764_S11_merge.g.vcf.gz \
   --variant ZA769_S12_merge.g.vcf.gz \
   --variant ZA782_S13_merge.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_1_1_1_GTGAAA_L002.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_1_10_1_CTTGTA_L001.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_1_15_1_GTTTCG_L002.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_1_15_2_GTGGCC_L002.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_6_1_1_AGTCAA_L001.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_6_1_2_CGTACG_L002.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_7_2_1_GAGTGG_L002.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_7_2_4_ACTGAT_L002.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_7_5_2_AGTTCC_L001.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_8_1_1_ATGTCA_L001.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_8_5_3_ATTCCT_L002.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_11_1_1_CCGTCC_L001.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/ST11IR_11_4_1_GGCTAC_L001.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/STIR041.1.1.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/STIR041.1.2.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/STIR043.13.1.g.vcf.gz \
   --variant /groups/envgenom/Brendan_Lahm/Data/2_Alignments/OG17/RG/haps2/STIR043.3.2.g.vcf.gz \
   -O ZA_combined.g.vcf.gz
