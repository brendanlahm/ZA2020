#!/bin/bash
#

gatk ValidateVariants \
   -R /home/lahm/ZA/ZA17/Za17_softmasked_for_publication.fa \
   -V ZA020_1_S14.g.vcf.gz
