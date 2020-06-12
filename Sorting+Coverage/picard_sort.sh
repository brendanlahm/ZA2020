#!/bin/bash
for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar SortSam \
      I=${each} \
      O=./Sorted/${each%aln.bam}sorted.bam \
      SORT_ORDER=coordinate
done
