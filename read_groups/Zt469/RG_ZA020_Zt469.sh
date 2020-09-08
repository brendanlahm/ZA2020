#!/bin/bash
#

for each in *Zt469*bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=./RG/${each%sorted.bam}RG.bam \
      RGID=X20 \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=runX20 \
      RGSM=ZA020
done
