#!/bin/bash
#

/home/lahm/software/gatk-4.1.7.0/gatk --java-options "-Xmx4g" HaplotypeCaller --pcr-indel-model NONE \
   -R /home/lahm/Desktop/assemblies/Za17_softmasked_for_publication.fa \
   -I ZA020_1_S14_A_RG.bam \
   -I ZA020_1_S14_B_RG.bam \
   -I ZA020_1_S14_C_RG.bam \
   -I ZA020_1_S14_D_RG.bam \
   -O ./haps/ZA020_1_S14.g.vcf.gz \
   -ERC GVCF \
   -ALIAS ZA020_1_S14
   
