#!/bin/bash

for each in *L002*bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar SortSam \
      I= ${each} \
      O=./Sorted/${each%.bam}_sorted.bam \
      SORT_ORDER=coordinate
done
