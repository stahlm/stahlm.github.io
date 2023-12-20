#HYSPLIT Backtrajectory Analysis
library(splitr)
library(lubridate)

#library(devtools)
#install_github("rich-iannone/splitr")

#Prevent timing out
getOption('timeout')
options(timeout=20000)

#Build the model 

trajectory_model <-hysplit_trajectory(
    lat = 9.99645,                  
    lon = 76.3427,
    height = 30,
    duration = 48,
    met_type = "reanalysis",
    direction	= "forward",
    days = seq(
      lubridate::ymd("2023-01-01"),
      lubridate::ymd("2023-01-10"),
      by = "1 day"
    ),
    daily_hours = c(8,16,24)
  )

#Remove the missing values (NAs)

trajectory_model_complete <-trajectory_model[complete.cases(trajectory_model), ]

#Plot the trajectories

trajectory_plot(trajectory_model_complete)



