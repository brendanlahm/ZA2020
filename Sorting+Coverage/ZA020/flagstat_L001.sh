#!/bin/bash

for each in *L001*bam
do
samtools flagstat ${each} > ./Flagstat/${each%.bam}_flagstat.txt
done
