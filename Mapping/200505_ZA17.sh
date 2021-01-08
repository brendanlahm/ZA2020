#!/bin/bash
#

## (on the cluster)
# Mapping newly sequenced reads (19 total isolates) to Za17

for each in *1P.fq
do
/data/biosoftware/bwa/bwa-0.7.17/bwa mem -o /200505/${each%1P.fq}aln.sam \
Za17_softmasked_for_publication.fa ${each} ${each%1P.fq}2P.fq
done
