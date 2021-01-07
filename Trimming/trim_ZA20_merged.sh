#!/bin/bash
#

## (on the cluster)
# Trimming raw reads previously merged w/ PEAR

java -jar /data/biosoftware/Trimmomatic/Trimmomatic-0.38/trimmomatic-0.38.jar SE \
ZA020_L002.assembled.fastq \
ZA020_L002_assembled_trim.fq.gz \
CROP:245 ILLUMINACLIP:TruSeq3-PE-G.fa:2:30:10 LEADING:25 SLIDINGWINDOW:3:25 MINLEN:35

