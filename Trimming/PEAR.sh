#!/bin/bash
#

## (on the cluster)
# Using PEAR to merge ZA20 PE raw reads

/data/biosoftware/pear/pear-0.9.10-bin-64/pear-0.9.10-bin-64 \
-f 4616_A_run654_ACAGTGGT_S290_L001_R1_001_2.fastq.gz \
-r 4616_A_run654_ACAGTGGT_S290_L001_R2_001_2.fastq.gz \
-n 0 \
-k \
-o /ZA020_L001
