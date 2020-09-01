#!/bin/bash
#

samtools merge -r ZA020_merge.bam ZA020_L001_Za100_RG.bam \
ZA020_L001_unassembled_Za100_RG.bam \
ZA020_L002_Za100_RG.bam ZA020_L002_unassembled_Za100_RG.bam
