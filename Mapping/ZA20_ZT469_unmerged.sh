#!/bin/bash
#

## (on the cluster)
# Mapping trimmed Za20 reads (not merged w/ PEAR) to Zt469

/data/biosoftware/bwa/bwa-0.7.17/bwa mem \
-o ZA020_L001_unassembled_Zt469.sam \
Zt469_pacbio_assembly_unmasked.fasta ZA020_L001_unassembled_trim_1P.fq ZA020_L001_unassembled_trim_2P.fq
