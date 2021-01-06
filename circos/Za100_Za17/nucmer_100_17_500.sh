#!/bin/bash
#

## Aligning the 14 largest contigs of Za100 (> 1Mb) against the first 27 contigs (> 500Kb) of Za17

nucmer --maxmatch -c 65 -b 200 -l 1000 -g 1000 /home/lahm/software/syri-master/Za100_Zt469/Za100_14.fa Za17_500Kb.fa
