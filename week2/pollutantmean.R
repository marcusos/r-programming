pollutantmean <- function(directory, pollutant, id = 1:332) {

  m_mean <- 0

  for(i in id) {

    id_str <- formatC(i, width=3, flag="0")
    file_path <- paste(directory, "/", id_str, ".csv", sep="")
    
    data_a <- read.csv(file_path)
    
    fina_data <- rbind(a, b)
    
  }
  
  data_slice <- data[[pollutant]]
  
  bad <- is.na(data_slice)
  m_mean <- m_mean + mean(data_slice[!bad])
  
  m_mean/length(id)
}

