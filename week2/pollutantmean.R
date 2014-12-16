pollutantmean <- function(directory, pollutant, id = 1:332) {

  data <- data.frame("Date"=as.Date(character()),
              "sulfate"=numeric(), "nitrate"=numeric(), "id"=numeric())  

  for(i in id) {

    id_str <- formatC(i, width=3, flag="0")
    file_path <- paste(directory, "/", id_str, ".csv", sep="")
    
    data_a <- read.csv(file_path)
    
    data <- rbind(data, data_a)
    
  }
  
  data_slice <- data[[pollutant]]
  
  bad <- is.na(data_slice)
  m_mean <- mean(data_slice[!bad])
  
  m_mean
}

