#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar SortSam \
      I=${each} \
      O=./Sorted/${each%Za100.bam}Za100_sorted.bam \
      SORT_ORDER=coordinate
done
