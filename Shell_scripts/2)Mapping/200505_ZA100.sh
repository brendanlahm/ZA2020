#!/bin/bash
#

## (on the cluster)
# Mapping newly sequenced reads (19 total isolates) to ZA100

for each in *1P.fq
do
/data/biosoftware/bwa/bwa-0.7.17/bwa mem -o /200505/Za100/${each%1P.fq}Za100.sam \
Za100_canu.unitigs.fasta ${each} ${each%1P.fq}2P.fq
done
