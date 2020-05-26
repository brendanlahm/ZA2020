#!/bin/bash
for each in *.bam
do
samtools flagstat ${each} > ./Flagstat/${each%aln_Zt469.bam}flagstat.txt
done
