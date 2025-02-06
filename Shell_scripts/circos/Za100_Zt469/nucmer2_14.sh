#!/bin/bash
#

## Aligning the 14 largest contigs of Za100 against the first 14 contigs (0-13) of Zt469 

nucmer --maxmatch -c 65 -b 200 -l 100 -g 1000 Za100_14.fa Zt469_14.fa
