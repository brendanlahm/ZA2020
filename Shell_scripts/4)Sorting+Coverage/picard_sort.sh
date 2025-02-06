#!/bin/bash
#

## Using Picard to sort bam files by coordinate (prior to assigning read groups)

for each in *.bam
do
java -jar picard.jar SortSam \
      I=${each} \
      O=${each%Za100.bam}Za100_sorted.bam \
      SORT_ORDER=coordinate
done
