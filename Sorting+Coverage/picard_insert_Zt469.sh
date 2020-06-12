#!/bin/bash
#

for each in *.bam
do
java -jar /home/lahm/software/picard/build/libs/picard.jar CollectInsertSizeMetrics \
      I=${each} \
      O=./Insert_size/${each%sorted_Zt469.bam}insert_metrics_Zt469.txt \
      H=./Insert_size/${each%sorted_Zt469.bam}insert_hist_Zt469.pdf \
      M=0.5
done
