#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=select
#  how many cpus are requested
#SBATCH --ntasks=1
#  run on one node, important if you have more than 1 ntasks
#SBATCH --nodes=1
#  maximum walltime
#SBATCH --time=1:00:00
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

gatk SelectVariants \
     -R /home/lahm/ZA/ZA17/Za17_softmasked_for_publication.fa \
     -V 36_highSNPs.vcf \
     --exclude-filtered \
     -O 36_highSNPs2.vcf
