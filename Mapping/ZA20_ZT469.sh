#!/bin/bash
#

## (on the cluster)
# Mapping trimmed Za20 reads (merged w/ PEAR) to Zt469

/data/biosoftware/bwa/bwa-0.7.17/bwa mem \
-o ZA020_L001_Zt469.sam \
Zt469_pacbio_assembly_unmasked.fasta ZA020_L001_assembled_trim.fq
