SNP Stats
================
brendanlahm
1/12/2021

``` r
### Calculating stats for 36 isolates mapped to Za100

## Importing the tab file for mapping stats produced from SnpEff

snpex = read.table("C:/Users/bml99/OneDrive/Documents/R/2020/SNPs4_genotype_select.tab", header = T, sep = "\t")

## Plotting each stat separately to assess quality of the dataset & make a decision on filtering

library(ggplot2)
ggplot(snpex, aes(x = DP, fill = DP)) +
  geom_density(position = "fill", stat = "density", alpha = 0.8) +
  stat_bin(aes(x = DP)) +
  coord_cartesian(xlim = c(0, 5000)) +
  theme_classic(base_size = 14) + ylab("Frequency") + xlab("Filtered Depth") +
  theme(legend.text = element_text(size=16), axis.title = element_text(size=16))
```

![](SNP_stats_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
ggplot(snpex, aes(x = MQ, fill = MQ)) +
  geom_density(position = "fill", stat = "density", alpha = 0.8) +
  stat_bin(aes(x = MQ)) +
  theme_classic(base_size = 14) + ylab("Frequency") + xlab("Mapping Quality") +
  theme(legend.text = element_text(size=16), axis.title = element_text(size=16))
```

![](SNP_stats_files/figure-gfm/unnamed-chunk-1-2.png)<!-- -->

``` r
ggplot(snpex, aes(x = QD, fill = QD)) +
  geom_density(position = "fill", stat = "density", alpha = 0.8) +
  stat_bin(aes(x = QD)) +
  theme_classic(base_size = 14) + ylab("Frequency") + xlab("Quality of Depth") +
  theme(legend.text = element_text(size=16), axis.title = element_text(size=16))
```

![](SNP_stats_files/figure-gfm/unnamed-chunk-1-3.png)<!-- -->
