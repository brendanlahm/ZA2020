########################### Returns system time of most recently added file in each sub-directory
########################## Only argument is the parent directory in question
TrackFiles <- function(dir){
  
  library(stringr)
  library(tidyr)
  library(dplyr)
  
  
  folders <- list.dirs(dir, recursive = F, full.names = T)
  names <- list.dirs(dir, recursive = F, full.names = F)
  
  data <- list()
  for (a in seq(folders)){
    
    data[[a]] <- as.list(list.files(folders[a], recursive = T, full.names = T))
    
  }
  
  names(data) <- names
  
  data2 <- Filter(function(x)length(x) > 0, data)
  
  info <- rapply(data2, file.info, how = "replace")
  
  info2 <- info %>%
    bind_rows(.id = "mode")
  
  info3 <- data.frame(row.names(info2), info2$mtime)
  names(info3) <- c("file", "mtime")
  info3$split_factor <- str_extract(info3$file, paste(names, collapse="|"))
  
  info4 <- group_split(info3, info3$split_factor)
  names(info4) <- sort(unique(info3$split_factor))
  
  time <- list()
  for (b in seq(info4)){
    
    time[b] <- max(info4[[b]]$mtime)
    
  }
  
  names(time) <- names(info4)
  
  return(sort(as.Date.POSIXct(unlist(time))))
  
  }


