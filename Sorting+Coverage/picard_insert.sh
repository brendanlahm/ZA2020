#!/bin/bash
for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar CollectInsertSizeMetrics \
      I=${each} \
      O=./Insert_size/${each%sorted.bam}insert_metrics.txt \
      H=./Insert_size/${each%sorted.bam}insert_hist.pdf \
      M=0.5
done
