#!/bin/bash
#
#  example submit script for a serial job
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=bwa2
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


for each in *_1P_aln.sai
do
/data/biosoftware/bwa/bwa-0.7.17/bwa sampe /home/lahm/ZA/ZA17/Za17_softmasked_for_publication.fa ${each} ${each%1P_aln.sai}2P_aln.sai \
/groups/envgenom/Brendan_Lahm/Data/1_Filtered_reads/200414/${each%_aln.sai}.fq /groups/envgenom/Brendan_Lahm/Data/1_Filtered_reads/200414/${each%1P_aln.sai}2P.fq \
| samtools view -bS > ${each%1P_aln.sai}aln.bam
done
