#!/bin/bash

## Collecting basic mapping stats from bam files

for each in *.bam
do
samtools flagstat ${each} > ${each%Za100.bam}flagstat.txt
done
