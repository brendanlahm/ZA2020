#!/bin/bash
#

## (on the cluster)
# Mapping trimmed Za20 reads (merged w/ PEAR) to Za17

/data/biosoftware/bwa/bwa-0.7.17/bwa mem \
-o ZA020_L001_merged.sam \
Za17_softmasked_for_publication.fa ZA020_L001_assembled_trim.fq
