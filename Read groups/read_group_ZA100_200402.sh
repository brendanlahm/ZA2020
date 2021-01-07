#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=./RG/${each%Za100_sorted.bam}RG.bam \
      RGID=A \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=run1 \
      RGSM=${each%_A_Za100_sorted.bam}
done