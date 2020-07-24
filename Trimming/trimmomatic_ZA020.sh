#!/bin/bash
#
#  example submit script for a serial job
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=trim
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
#SBATCH --partition=global


for each in *R1_001_2.fastq.gz
do
java -jar /data/biosoftware/Trimmomatic/Trimmomatic-0.38/trimmomatic-0.38.jar \
PE ${each} ${each%R1_001_2.fastq.gz}R2_001_2.fastq.gz \
-baseout /groups/envgenom/Brendan_Lahm/Data/1_Filtered_reads/ZA020/${each%R1_001_2.fastq.gz}fq.gz \
CROP:245 ILLUMINACLIP:/groups/envgenom/Brendan_Lahm/Data/0_Raw_reads/TruSeq3-PE-G.fa:2:30:10 LEADING:25 SLIDINGWINDOW:3:25 MINLEN:35
done
