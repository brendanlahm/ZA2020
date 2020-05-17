#!/bin/bash
for each in *.bam
do
samtools flagstat ${each}
done
