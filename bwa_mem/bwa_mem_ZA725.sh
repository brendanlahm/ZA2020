#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=bwa
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

/data/biosoftware/bwa/bwa-0.7.17/bwa mem -o ZA725_combined_aln.sam \
/home/lahm/ZA/ZA17/Za17_softmasked_for_publication.fa ZA725_1P_combined.fq ZA725_2P_combined.fq

