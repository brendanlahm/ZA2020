#!/bin/bash
#

for each in *A_RG.bam
do
samtools merge -r ./merge/${each%A_RG.bam}merge.bam ${each} /home/lahm/Documents/Alignments/200408/Zt469/Sorted/RG/${each%A_RG.bam}B_RG.bam \
/home/lahm/Documents/Alignments/200414/Zt469/Sorted/RG/${each%A_RG.bam}C_RG.bam \
/home/lahm/Documents/Alignments/200505/Zt469/Sorted/RG/${each%A_RG.bam}D_RG.bam
done
