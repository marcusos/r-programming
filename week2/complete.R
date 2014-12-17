complete <- function(directory, id = 1:332) {
  
  data <- data.frame(matrix(ncol=2, nrow=length(id)))
  names(data) <- c("id", "nobs")
  
  j <- 1
  
  for(i in id) {
    
    #/Users/marcusoliveira/Documents/date-science/r-programming/data/specdata
    id_str <- formatC(i, width=3, flag="0")
    file_path <- paste(directory, "/", id_str, ".csv", sep="")
    
    data_a <- read.csv(file_path)    
    ok <- complete.cases(data_a)
    data_a <- data_a[ok,]
    data_len <- nrow(data_a)
    
    data[j, "id"] = i
    data[j, "nobs"] = data_len
    j <- j + 1
  }

  data
}

