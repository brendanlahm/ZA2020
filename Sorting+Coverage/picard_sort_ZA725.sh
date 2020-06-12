#!/bin/bash

java -jar /home/lahm/software/picard/build/libs/picard.jar SortSam \
      I=ZA725_combined_aln.bam \
      O=ZA725_combined_sorted.bam \
      SORT_ORDER=coordinate
