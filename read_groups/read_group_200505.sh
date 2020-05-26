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
      RGPU=200505_NS500351_0419_AHC53NAFX2.001 \
      RGSM=${each%_D_sorted.bam} \
      RGPI=550
done
