#!/bin/bash
#

## Filtering the delta file produced by nucmer w/ the delter-filter utility program

delta-filter -m -i 80 -l 70 out_14.delta > out_14.filtered.delta
