for K in 1 2 3 4 5 6
do
/home/lahm/software/admixture_linux-1.3.0/admixture --cv 36_leafySNPs.pruned.bed $K | tee log${K}.out
done