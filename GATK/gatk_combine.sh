#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=combine
#  how many cpus are requested
#SBATCH --ntasks=4
#  run on one node, important if you have more than 1 ntasks
#SBATCH --nodes=1
#  maximum walltime
#SBATCH --time=24:00:00
#  maximum requested memory
#SBATCH --mem=50G
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
   --variant ZA020_1_S14.g.vcf.gz \
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
   -O ZA_combined.g.vcf.gz \
