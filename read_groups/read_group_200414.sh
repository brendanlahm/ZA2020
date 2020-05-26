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
      RGPU=200414_NS500351_0416_AH7WFVAFX2.001 \
      RGSM=${each%_C_sorted.bam} \
      RGPI=550
done
