#!/bin/bash
#

## (on the cluster)
# Mapping newly sequenced reads (19 total isolates) to Zt469

for each in *1P.fq
do
/data/biosoftware/bwa/bwa-0.7.17/bwa mem -o /200505/Zt469/${each%1P.fq}aln_Zt469.sam \
Zt469_pacbio_assembly_unmasked.fasta ${each} ${each%1P.fq}2P.fq
done
