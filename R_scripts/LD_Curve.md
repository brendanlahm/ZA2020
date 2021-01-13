LD Decay Analysis
================
brendanlahm
1/12/2021

``` r
#######################################
# Functions to load to fit LD curve 

### Function for the fit of a non-linear model to the rsquared data (Remington et al. 2001, see also Ingvarsson 2005)
Er2.fit <- function(IN_ld, n, dist.mat) { 
  
  dist <- dist.mat[!is.na(IN_ld)]
  Er2 <- as.numeric(IN_ld[!is.na(IN_ld)])
  
  m1 <- nls(Er2 ~ ((10 + rho*dist)/((2 + rho*dist)*(11 + rho*dist)))*(1 + ((3 + rho*dist)*(12 + 12*rho*dist + (rho*dist)^2))/(n * (2 + rho*dist)*(11 + rho*dist))), start=list(rho=0.005), trace=T, control = nls.control(maxiter = 1000))
  #start=list(B=B, T1=T1), weights=bli$nbTotal,
  
  r2_fit <- predict(m1, dist=dist)
  res <- residuals(m1)
  
  Serr <- sum(res^2)
  Er2.m <- mean(Er2)
  
  Stot <- sum((Er2-Er2.m)^2)
  Rsq <- round(1-(Serr/Stot),2)
  
  # prep for plot
  co <- coef(m1)
  p <- round(summary(m1)$coefficients, 5)
  
  co[1]
}

### Plotting of decay, and return the decay to R2 = 0.2
plot.decay <- function(n, rho, dist.mat, LD) {

  #png plot with points and fitting curve
  png(paste0("Plot",pop,".LDdecay_chr_12_328_position_313465_345465.png"))
  plot(dist.mat, LD, ylab="R^2", xlab="Distance (bp)", ylim=c(0,1), col="grey", main=pop)
  curve(((10 + rho*x)/((2 + rho*x)*(11 + rho*x)))*(1 + ((3 + rho*x)*(12 + 12*rho*x + (rho*x)^2))/(n * (2 + rho*x)*(11 + rho*x))), min(dist.mat, na.rm=T), max(dist.mat, na.rm=T), col="red", lwd=3, add=T)
  dev.off()
  dat<-curve(((10 + rho*x)/((2 + rho*x)*(11 + rho*x)))*(1 + ((3 + rho*x)*(12 + 12*rho*x + (rho*x)^2))/(n * (2 + rho*x)*(11 + rho*x))), min(dist.mat, na.rm=T), max(dist.mat, na.rm=T))
  a<-max(dat$x[dat$y > 0.2], na.rm=T)
  print(a)
  
  #png plot fitting curve only and return the decay (bp) to R2 = 0.2
  png(paste0("Plot",pop,".LDdecay_chr_12_328_position_313465_345465_fitting_curve_only.png"))
  plot(dist.mat, LD, ylab="R^2", xlab="Distance (bp)", ylim=c(0,1), col="grey", main=paste("POP ",pop," LD decay (R2 = 0.2) : ",a," bp",sep=""),type="n")
  curve(((10 + rho*x)/((2 + rho*x)*(11 + rho*x)))*(1 + ((3 + rho*x)*(12 + 12*rho*x + (rho*x)^2))/(n * (2 + rho*x)*(11 + rho*x))), min(dist.mat, na.rm=T), max(dist.mat, na.rm=T),col="red", lwd=3, add=T)
  dev.off()
  
}

#######################################
# Plotting LD decay curve (the final plot is exported to the directory containing this script)

library(dplyr)

ld.new = read.table("C:/Users/bml99/Desktop/ld_window_15000.hap.ld", header = T, sep = "\t")
ld.new_subset = sample_n(ld.new, 100000)
pop = "Iran"

distances_new <- ld.new_subset[,"POS2"]-ld.new_subset[,"POS1"]
ld_new <- ld.new_subset[,"R.2"]
nhaplo_new <- 36

rho_new <- Er2.fit(ld_new, nhaplo_new, distances_new)
t <- length(unique(ld.new_subset[,"POS2"]))
t
plot.decay(nhaplo_new , rho_new, distances_new, ld_new)
```

![](LD_Curve_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->