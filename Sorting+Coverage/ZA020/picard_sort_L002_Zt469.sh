#!/bin/bash

java -jar /home/lahm/software/picard/build/libs/picard.jar SortSam \
      I= ZA020_L002_Zt469.bam \
      O=./Sorted/ZA020_L002_Zt469_sorted.bam \
      SORT_ORDER=coordinate
