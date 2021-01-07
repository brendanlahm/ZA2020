## Cross-validation error analysis for each K

for K in 1 2 3 4 5 6 7 8
do
/admixture_linux-1.3.0/admixture --cv SNPs4_leafy.bed $K | tee log${K}.out
done
