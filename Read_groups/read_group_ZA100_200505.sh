#!/bin/bash
#

## Using Picard to assign read groups to bam files of the fourth run of the newly sequenced data
## 
### I = bam file
### O = Output bam file
### RGID = Read group name
### RGLB = Library number
### RGPL = Sequencing platform
### RGPU = Run # (in this case the fourth)
### RGSM = Sample name

for each in *.bam
do
java -jar picard.jar AddOrReplaceReadGroups \
      I=${each} \
      O=${each%Za100_sorted.bam}RG.bam \
      RGID=D \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=run4 \
      RGSM=${each%_D_Za100_sorted.bam}
done
