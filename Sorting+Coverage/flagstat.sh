#!/bin/bash
for each in *.bam
do
samtools flagstat ${each} > ./Flagstat/${each%aln.bam}flagstat.txt
done
