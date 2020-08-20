#!/bin/bash
for each in *.bam
do
samtools flagstat ${each} > ./Flagstat/${each%Za100.bam}flagstat.txt
done
