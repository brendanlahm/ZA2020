#!/bin/bash
#

## (on the cluster)
# Mapping trimmed Za20 reads (not merged w/ PEAR) to Za100

/data/biosoftware/bwa/bwa-0.7.17/bwa mem \
-o ZA020_L001_unassembled_Za100.sam \
Za100_canu.unitigs.fasta ZA020_L001_unassembled_trim_1P.fq ZA020_L001_unassembled_trim_2P.fq
