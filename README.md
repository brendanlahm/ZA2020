# ZA2020

The purpose of this project was to determine whether the contig, unitig 9, was transferred from *Z. ardabiliae* to *Z. tritici*

![alt text](https://github.com/brendanlahm/ZA2020/blob/master/circos/Za100_Zt469/Fig_10.png)

Figure: Interspecific synteny analysis between Za100 and Zt469. The 14 largest contigs of Za100 (> 1Mb) share synteny (represented by links) with contigs 0-13 in Zt469. The colors represent homologous contigs, with those circled having telomeres at both ends.

## Folders

- **ADMIXTURE:** Shell scripts for determining population structure w/ ADMIXTURE 1.3.0

- **Filtering:** Shell scripts for filtering SNPs on quality & singletons

- **GATK:** Shell scripts for VCF file manipulation w/ GATK

- **Mapping:** Shell scripts for read mapping w/ bwa

- **Python_scripts:** Python scripts for data exploration

- **R_scripts:** R scripts used for data plotting (including a Shiny app for interactive Admixture plotting)

- **Read_groups:** Shell scripts for assigning read groups & merging bam files

- **Sorting+Coverage:** Shell scripts for calculating depth of coverage w/ SAMtools

- **Trimming:** Shell scripts for merging & trimming raw reads

- **circos:** Shell scripts for creating circos plots

- **data:** data files required for running the Admixture App

