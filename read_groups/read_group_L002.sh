#!/bin/bash
#

java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=ZA020_L002_sorted.bam \
      O=ZA020_L002_RG.bam \
      RGID=X \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=runX \
      RGSM=ZA020_L002
