#!/bin/bash
#

## (on the cluster)
# Trimming raw reads that failed to be merged w/ PEAR

java -jar /data/biosoftware/Trimmomatic/Trimmomatic-0.38/trimmomatic-0.38.jar PE \
ZA020_L002.unassembled.forward.fastq \
ZA020_L002.unassembled.reverse.fastq \
-baseout ZA020_L002_unassembled_trim.fq.gz \
CROP:245 ILLUMINACLIP:TruSeq3-PE-G.fa:2:30:10 LEADING:25 SLIDINGWINDOW:3:25 MINLEN:35

