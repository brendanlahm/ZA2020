#!/bin/bash
#

## Subsetting the first 14 contigs of Zt469 prior to running nucmer

awk '{ if ((NR>1)&&($0~/^>/)) { printf("\n%s", $0); } else if (NR==1) { printf("%s", $0); } else { printf("\t%s", $0); } }' /home/lahm/Desktop/Assemblies/Zt469_pacbio_assembly_unmasked.fasta | grep -Ff contigs_Zt469_14.txt - | tr "\t" "\n" > Za100_Zt469/Zt469_14.fa
