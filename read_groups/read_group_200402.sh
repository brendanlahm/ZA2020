#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=./RG/${each%sorted.bam}RG.bam \
      RGID=null \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=20402_NS500351_0414_AHWYMHAFXY.001 \
      RGSM=${each%_A_sorted.bam} \
      RGPI=550
done
