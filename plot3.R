plot3 <- function(){
  
  par(mfrow = c(1,1))
  
  #Create the plot area, but do not plot the points (that's why "type = "n"" - it won't plot the points)
  plot(data_Subset$Date_Time, data_Subset$Sub_metering_1, xlab = "", ylab = "Energy sub metering",
       ylim = c(0,40), yaxp=c(0,30,3), type ="n")
  
  #Plot the data in lines
  lines(data_Subset$Date_Time, data_Subset$Sub_metering_1)
  lines(data_Subset$Date_Time, data_Subset$Sub_metering_2, col = "red")
  lines(data_Subset$Date_Time, data_Subset$Sub_metering_3, col = "blue")
  
  #Create legend; lty creates the line type in the legend (can change to 2 to get dotted); lwd is line width
  #   in legend; col sets the line color in the legend
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty = c(1,1,1), lwd = c(2.5,2.5,2.5), col = c("black","red", "blue"))
  
  #Now I want to create a .png file of the histogram with set width and height
  dev.copy(png, file = "plog3.png", width = 480, height = 480)
  
  #You must close the graphical device
  dev.off()
}