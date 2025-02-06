#!/bin/bash
#

## (on the cluster)
# Mapping trimmed Za20 reads (not merged w/ PEAR) to Za17

/data/biosoftware/bwa/bwa-0.7.17/bwa mem \
-o ZA020_L001_unassembled.sam \
Za17_softmasked_for_publication.fa ZA020_L001_unassembled_trim_1P.fq ZA020_L001_unassembled_trim_2P.fq
