#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=bwa
#  how many cpus are requested
#SBATCH --ntasks=4
#  run on one node, important if you have more than 1 ntasks
#SBATCH --nodes=1
#  maximum walltime
#SBATCH --time=12:00:00
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

for each in *1P.fq
do
/data/biosoftware/bwa/bwa-0.7.17/bwa mem -o /groups/envgenom/Brendan_Lahm/Data/2_Alignments/200408/Zt469/${each%1P.fq}aln_Zt469.sam \
/home/lahm/ZT/Zt469_pacbio_assembly_unmasked.fasta ${each} ${each%1P.fq}2P.fq
done
