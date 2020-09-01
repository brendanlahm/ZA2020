#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=./RG/${each%Za100_sorted.bam}RG.bam \
      RGID=C \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=run3 \
      RGSM=${each%_C_Za100_sorted.bam}
done
