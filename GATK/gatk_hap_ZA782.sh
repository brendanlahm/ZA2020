#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=za782
#  how many cpus are requested
#SBATCH --ntasks=1
#  run on one node, important if you have more than 1 ntasks
#SBATCH --nodes=1
#  maximum walltime
#SBATCH --time=10:00:00
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

gatk --java-options "-Xmx4g" HaplotypeCaller --pcr-indel-model NONE \
   -R /home/lahm/ZA/ZA17/Za17_softmasked_for_publication.fa \
   -I ZA782_S13_A_RG.bam \
   -I ZA782_S13_B_RG.bam \
   -I ZA782_S13_C_RG.bam \
   -I ZA782_S13_D_RG.bam \
   -O ./haps/ZA782_S13.g.vcf.gz \
   -ERC GVCF \
   -ALIAS ZA782_S13
   