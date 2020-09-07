#!/bin/bash
#
#  submit by  sbatch serial-job.sh
#
#  specify the job name
#SBATCH --job-name=filter
#  how many cpus are requested
#SBATCH --ntasks=1
#  run on one node, important if you have more than 1 ntasks
#SBATCH --nodes=1
#  maximum walltime
#SBATCH --time=0:50:00
#  maximum requested memory
#SBATCH --mem=10G
#  write std out and std error to these files
#SBATCH --error=essai_aln_280.sterr
#SBATCH --output=essai_aln_280.stout
#  send a mail for job start, end, fail, etc.
#SBATCH --mail-type=NONE
#SBATCH --mail-user=lahm@evolbio.mpg.de
#  which partition?
#  there are global,testing,highmem,standard,fast
#SBATCH --partition=standard

gatk VariantFiltration \
-R /home/lahm/ZA/ZA100/Za100_canu.unitigs.fasta \
-V 35_genotype_select.vcf \
-O 35_high.vcf \
--filter-name "high_filter" \
--filter-expression "MQ < 55.0 || QD < 20.0"
