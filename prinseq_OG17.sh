#!/bin/bash
#
#  example submit script for a serial job
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=prinseq
#  how many cpus are requested
#SBATCH --ntasks=4
#  run on one node, important if you have more than 1 ntasks
#SBATCH --nodes=1
#  maximum walltime
#SBATCH --time=100:00:00
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

module load perl/5.26.1

for each in ST*_1P.fq
do
perl /data/biosoftware/prinseq/bin/prinseq-lite.pl -derep 12345 -fastq ${each} -fastq2 ${each%1P.fq}2P.fq -log -verbose \
-out_good /home/lahm/ZA/dups/${each%1P.fq}dups -out_bad null
done
