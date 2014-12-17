corr <- function(directory, threshold = 0) {
  
  data <- data.frame(matrix(ncol=2, nrow=length(id)))
  names(data) <- c("id", "nobs")
  
  j <- 0
  
  for(i in id) {
    
    id_str <- formatC(i, width=3, flag="0")
    file_path <- paste(directory, "/", id_str, ".csv", sep="")
    
    data_a <- read.csv(file_path)
    data_len <- length(data_a)
    
    if (data_len > threshold) {
      data
    }
    
    data[j, "id"] = i
    data[j, "nobs"] = data_len
    j <- j + 1
  }
  
  data
}

