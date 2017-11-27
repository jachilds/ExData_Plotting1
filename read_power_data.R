read_power_data <- function(){
  #Create a function called "power_analysis"
  
  #Set working directory to location of file to analyze
  setwd("C:/Users/jchilds/Documents/Coursera/Module 4/Homework 1")
  
  #Open necessary packages
  library(dplyr)         #Open the dplyr package
  library(lubridate)     #Open the lubridate package for fixing date formats
  
  #Open .txt data file and put into a data table using the dplyr package
  data <- tbl_df(read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, nrows = 2080000, na.strings = "?"))
  
  #Create a new date variable called "Date_Time" that combines "Date" & "Time" using lubridate package
  data$Date_Time <- dmy_hms(with(data, paste(Date, Time)))
  data$Day <- wday(data$Date_Time, label = TRUE)
  
  #Filter data on date ranges:
  Start_Date <- "2007-01-31 16:00:00"
  End_Date <- "2007-02-02 16:00:00"
  data_Subset <- subset(data, Date_Time > Start_Date & Date_Time <End_Date)
  data_Subset <<- select(data_Subset, Date_Time, Day, Global_active_power:Sub_metering_3)
 }