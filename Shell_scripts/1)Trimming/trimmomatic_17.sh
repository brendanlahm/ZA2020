#!/bin/bash
#

## (on the cluster)
# Trimming raw reads w/ a length of 75bp

for each in STIR*_1.fastq
do
java -jar /data/biosoftware/Trimmomatic/Trimmomatic-0.38/trimmomatic-0.38.jar PE ${each} ${each%1.fastq}2.fastq \
 -baseout ${each%_1.fastq}.fq \
 CROP:70 ILLUMINACLIP:TruSeq3-PE-G.fa:2:30:10 LEADING:25 SLIDINGWINDOW:3:25 MINLEN:35
done
