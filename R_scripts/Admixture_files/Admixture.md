Admixture
================
brendanlahm
1/12/2021

``` r
### Importing ADMIXTURE output files

K2 = read.table("C:/Users/bml99/OneDrive/Documents/R/2020/admixture/SNPs4_leafy.2.Q")
K3 = read.table("C:/Users/bml99/OneDrive/Documents/R/2020/admixture/SNPs4_leafy.3.Q")
K4 = read.table("C:/Users/bml99/OneDrive/Documents/R/2020/admixture/SNPs4_leafy.4.Q")
K5 = read.table("C:/Users/bml99/OneDrive/Documents/R/2020/admixture/SNPs4_leafy.5.Q")
K6 = read.table("C:/Users/bml99/OneDrive/Documents/R/2020/admixture/SNPs4_leafy.6.Q")

library(reshape2)
library(ggplot2)

### Importing info for sampling year, location & host

isolates2 <- read.table("C:/Users/bml99/OneDrive/Documents/R/2020/36_isolates2.tab", header = T, row.names = NULL)
locations <- read.table("C:/Users/bml99/OneDrive/Documents/R/2020/36_locations.tab", header = T)
hosts2 <- read.table("C:/Users/bml99/OneDrive/Documents/R/2020/36_hosts2.tab", header = T, row.names = NULL)
years <- read.table("C:/Users/bml99/OneDrive/Documents/R/2020/36_years.tab", header = T, row.names = NULL)

years$Year <- as.character(as.numeric(years$Year))

### K = 2

K2T <- data.frame(isolates2, locations, years, hosts2, K2)
K2T2 <- melt(K2T)

K2T2$Location_f = factor(K2T2$Location, levels=c('A','EA','L1a','L1b','L3','L6','L7','L8','L11'))

ggplot(K2T2, aes(x = Isolate, y = value, fill = variable, label = Location)) +
        geom_bar(position = "fill", stat = "identity", alpha = 0.8) + ggtitle("Admixture K=2") + 
        facet_wrap(Location_f~Host~Year, ncol = 9, scales="free_x") +
        theme_classic(base_size = 14) + ylab("Anc. Proportions") +
        scale_fill_manual(values=c("#56B4E9",  "#009900")) +
        theme(legend.position = "none", axis.title.x = element_blank(), axis.title.y = element_blank(), axis.text.x = element_text(size=6, angle=90), 
              strip.text.x = element_text(size = 14), strip.background = element_blank())
```

![](Admixture_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
### K = 3

K3T <- data.frame(isolates2, locations, years, hosts2, K3)
K3T2 <- melt(K3T)

K3T2$Location_f = factor(K3T2$Location, levels=c('A','EA','L1a','L1b','L3','L6','L7','L8','L11'))

ggplot(K3T2, aes(x = Isolate, y = value, fill = variable, label = Location)) +
        geom_bar(position = "fill", stat = "identity", alpha = 0.8) + ggtitle("Admixture K=3") + 
        facet_wrap(Location_f~Host~Year, ncol = 9, scales="free_x") +
        theme_classic(base_size = 14) + ylab("Anc. Proportions") +
        theme(legend.position = "none", axis.title.x = element_blank(), axis.title.y = element_blank(), axis.text.x = element_text(size=6, angle=90), 
              strip.text.x = element_text(size = 14), strip.background = element_blank())
```

![](Admixture_files/figure-gfm/unnamed-chunk-1-2.png)<!-- -->

``` r
### K = 4

K4T <- data.frame(isolates2, locations, years, hosts2, K4)
K4T2 <- melt(K4T)

K4T2$Location_f = factor(K4T2$Location, levels=c('A','EA','L1a','L1b','L3','L6','L7','L8','L11'))

ggplot(K4T2, aes(x = Isolate, y = value, fill = variable, label = Location)) +
        geom_bar(position = "fill", stat = "identity", alpha = 0.8) + ggtitle("Admixture K=4") + 
        facet_wrap(Location_f~Host~Year, ncol = 9, scales="free_x") +
        theme_classic(base_size = 14) + ylab("Anc. Proportions") +
        scale_fill_manual(values=c("#56B4E9", "#FF6666", "#E69F00", "#009900")) +
        theme(legend.position = "none", axis.title.x = element_blank(), axis.title.y = element_blank(), axis.text.x = element_text(size=6, angle=90), 
              strip.text.x = element_text(size = 14), strip.background = element_blank())
```

![](Admixture_files/figure-gfm/unnamed-chunk-1-3.png)<!-- -->

``` r
### K = 5

K5T <- data.frame(isolates2, locations, years, hosts2, K5)
K5T2 <- melt(K5T)

K5T2$Location_f = factor(K5T2$Location, levels=c('A','EA','L1a','L1b','L3','L6','L7','L8','L11'))

ggplot(K5T2, aes(x = Isolate, y = value, fill = variable, label = Location)) +
        geom_bar(position = "fill", stat = "identity", alpha = 0.8) + ggtitle("Admixture K=5") + 
        facet_wrap(Location_f~Host~Year, ncol = 9, scales="free_x") +
        theme_classic(base_size = 14) + ylab("Anc. Proportions") +
        scale_fill_manual(values=c( "#FF6666", "#E69F00", "#009900", "#56B4E9","#CC00FF")) +
        theme(legend.position = "none", axis.title.x = element_blank(), axis.title.y = element_blank(), axis.text.x = element_text(size=14, angle=90), 
              strip.text.x = element_text(size = 14), strip.background = element_blank())
```

![](Admixture_files/figure-gfm/unnamed-chunk-1-4.png)<!-- -->

``` r
### K = 6

K6T <- data.frame(isolates2, locations, years, hosts2, K6)
K6T2 <- melt(K6T)

K6T2$Location_f = factor(K6T2$Location, levels=c('A','EA','L1a','L1b','L3','L6','L7','L8','L11'))

ggplot(K6T2, aes(x = Isolate, y = value, fill = variable, label = Location)) +
        geom_bar(position = "fill", stat = "identity", alpha = 0.8) + ggtitle("Admixture K=6") + 
        facet_wrap(Location_f~Host~Year, ncol = 9, scales="free_x") +
        theme_classic(base_size = 14) + ylab("Anc. Proportions") + scale_fill_brewer(palette = "Set1") +
        scale_fill_manual(values=c("#CC00FF", "#009900", "#66CC00", "#E69F00", "#FF6666", "#56B4E9")) +
        theme(legend.position = "none", axis.title.x = element_blank(), axis.title.y = element_blank(), axis.text.x = element_text(size=14, angle=90), 
              strip.text.x = element_text(size = 14), strip.background = element_blank())
```

![](Admixture_files/figure-gfm/unnamed-chunk-1-5.png)<!-- -->
