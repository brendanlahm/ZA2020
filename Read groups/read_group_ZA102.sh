#!/bin/bash
#

java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=ST11IR_11_1_1_CCGTCC_L001_Za100_sorted.bam \
      O=./RG/ST11IR_11_1_1_RG.bam \
      RGID=X \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=runX \
      RGSM=ST11IR_11_1_1
