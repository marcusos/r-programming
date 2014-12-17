corr <- function(directory, threshold = 0) {
  
  data <- c()
  
  i <- 1
  while(1==1) {
    
    id_str <- formatC(i, width=3, flag="0")
    file_path <- paste(directory, "/", id_str, ".csv", sep="")
    
    if (!file.exists(file_path)){
      break
    }
    
    #/Users/marcusoliveira/Documents/date-science/r-programming/data
    data_a <- read.csv(file_path)    
    ok <- complete.cases(data_a)
    data_a <- data_a[ok,]
    data_len <- nrow(data_a)
    
    if (data_len > threshold) {
      m_cor <- cor(data_a[['sulfate']], data_a[['nitrate']])
      data <- append(data, m_cor)
    }
    

    i <- i + 1
  }
  
  data
}

