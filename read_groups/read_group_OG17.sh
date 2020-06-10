#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=./RG/${each%sorted.bam}RG.bam \
      RGID=X \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=runX \
      RGSM=${each_sorted.bam}
done
