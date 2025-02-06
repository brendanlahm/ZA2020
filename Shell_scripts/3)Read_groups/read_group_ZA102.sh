#!/bin/bash
#

## Example for using Picard to assign read groups to bam files of the old sequencing data
## 
### I = bam file
### O = Output bam file
### RGID = Read group name
### RGLB = Library number
### RGPL = Sequencing platform
### RGPU = Run # (in this case the sequencing data was available before the project start)
### RGSM = Sample name

java -jar picard.jar AddOrReplaceReadGroups \
      I=ST11IR_11_1_1_CCGTCC_L001_Za100_sorted.bam \
      O=ST11IR_11_1_1_RG.bam \
      RGID=X \
      RGLB=lib1 \
      RGPL=illumina \
      RGPU=runX \
      RGSM=ST11IR_11_1_1
