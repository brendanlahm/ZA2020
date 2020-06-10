#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=./RG/${each%sorted.bam}RG.bam \
      RGID=B \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=run2 \
      RGSM=${each%_B_sorted.bam}
done