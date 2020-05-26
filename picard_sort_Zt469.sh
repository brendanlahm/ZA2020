#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar SortSam \
      I=${each} \
      O=./Sorted/${each%aln_Zt469.bam}sorted_Zt469.bam \
      SORT_ORDER=coordinate
done
