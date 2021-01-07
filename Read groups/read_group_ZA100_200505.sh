#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=./RG/${each%Za100_sorted.bam}RG.bam \
      RGID=D \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=run4 \
      RGSM=${each%_D_Za100_sorted.bam}
done
