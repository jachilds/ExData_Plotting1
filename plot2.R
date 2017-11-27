plot2 <- function(){
  
  par(mfrow = c(1,1))
  
  #Create the plot area, but do not plot the points (that's why "type = "n"" - it won't plot the points)
  plot(data_Subset$Date_Time, data_Subset$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)",
       ylim = c(0,8), yaxp=c(0,6,3), type ="n")
  
  #Plot the data in lines
  lines(data_Subset$Date_Time, data_Subset$Global_active_power)
  
  #Now I want to create a .png file of the histogram with set width and height
  dev.copy(png, file = "plog2.png", width = 480, height = 480)
  
  #You must close the graphical device
  dev.off()
}