plot4 <- function() {

  par(mfrow = c(2,2), mar = c(2,4,2,2), oma = c(1,1,2,1))
  
  #Create top-left plot:
  plot(data_Subset$Date_Time, data_Subset$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)",
       ylim = c(0,8), yaxp=c(0,6,3), type ="n")
  lines(data_Subset$Date_Time, data_Subset$Global_active_power)
  
  #Create top-right plot:
  plot(data_Subset$Date_Time, data_Subset$Voltage, xlab = "datetime", ylab = "Voltage",
       ylim = c(233,247), yaxp=c(234,246,4), type ="n")
  lines(data_Subset$Date_Time, data_Subset$Voltage)
  
  #Create bottom-left plot:
  plot(data_Subset$Date_Time, data_Subset$Sub_metering_1, xlab = "", ylab = "Energy sub metering",
       ylim = c(0,40), yaxp=c(0,30,3), type ="n")
  lines(data_Subset$Date_Time, data_Subset$Sub_metering_1)
  lines(data_Subset$Date_Time, data_Subset$Sub_metering_2, col = "red")
  lines(data_Subset$Date_Time, data_Subset$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty = c(1,1,1), lwd = c(2.5,2.5,2.5), col = c("black","red", "blue"), cex = .65)
  
  #Create bottom-right plot:
  plot(data_Subset$Date_Time, data_Subset$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power",
       ylim = c(0,.5), yaxp=c(0,.5,5), type ="n")
  lines(data_Subset$Date_Time, data_Subset$Global_reactive_power)
  
  #Now I want to create a .png file of the histogram with set width and height
  dev.copy(png, file = "plog4.png", width = 480, height = 480)
  
  #You must close the graphical device
  dev.off()
}