#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=L002
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

/data/biosoftware/pear/pear-0.9.10-bin-64/pear-0.9.10-bin-64 \
-f 4616_A_run654_ACAGTGGT_S290_L002_R1_001_2.fastq.gz \
-r 4616_A_run654_ACAGTGGT_S290_L002_R2_001_2.fastq.gz \
-n 0 \
-k \
-o /groups/envgenom/Brendan_Lahm/Data/1_Filtered_reads/ZA020/L001/ZA020_L002
