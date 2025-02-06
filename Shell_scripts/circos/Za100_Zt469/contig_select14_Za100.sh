#!/bin/bash
#

## Subsetting the 14 largest contigs of Za100 (> 1Mb) prior to running nucmer

awk '{ if ((NR>1)&&($0~/^>/)) { printf("\n%s", $0); } else if (NR==1) { printf("%s", $0); } else { printf("\t%s", $0); } }' /home/lahm/Desktop/Assemblies/Za100_canu.unitigs.fasta | grep -Ff contigs_Za100_14.txt - | tr "\t" "\n" > Za100_Zt469/Za100_14.fa
