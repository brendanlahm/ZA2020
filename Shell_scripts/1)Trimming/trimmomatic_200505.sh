#!/bin/bash
#

## Trimming raw reads w/ a length of 150bp

for each in *R1_001.fastq.gz
do
java -jar /data/biosoftware/Trimmomatic/Trimmomatic-0.38/trimmomatic-0.38.jar PE ${each} ${each%R1_001.fastq.gz}R2_001.fastq.gz \
 -baseout ${each%R1_001.fastq.gz}D.fq.gz \
 CROP:145 ILLUMINACLIP:TruSeq3-PE-G.fa:2:30:10 LEADING:25 SLIDINGWINDOW:3:25 MINLEN:35
done
