get_usgs_earthquakes <- function(start_date, end_date, min_magnitude = 2.5, start_time = "0000:00:00", end_time = "23:59:59"){
  
  ## Function info
  
  #' @description this function queries and downloads earthquake data from the USGS Earthquakes Hazards Program real-time database of global earthquakes
  #' @param start_date start date for your query.  Entered as a text string in the format "YYYY-MM-DD"
  #' 
  
  
  ## Function code
    
  base_url <- "https://earthquake.usgs.gov/fdsnws/event/1/query.csv?"
  
  full_url <- paste0(base_url,"starttime=", start_date, "%", start_time, "&",
                     "endtime=", end_date, "%20", end_time, "&",
                     "minmagnitude=", min_magnitude, "&",
                     "orderby=time")
                     
  df_earthquakes <- read.csv(full_url)
  

  }
  