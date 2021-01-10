#!/bin/bash

## Using Picard to calculate insert sizes from previously sorted bam files and outputting them as pdfs and text files

for each in *.bam
do
java -jar picard.jar CollectInsertSizeMetrics \
      I=${each} \
      O=${each%sorted.bam}insert_metrics.txt \
      H=${each%sorted.bam}insert_hist.pdf \
      M=0.5
done
