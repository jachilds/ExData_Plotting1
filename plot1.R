plot1 <- function(){
  
  par(mfrow = c(1,1))
  
  #I want to create the histogram as follows:
  hist(data_Subset$Global_active_power, col = "red", breaks = 12,
       ylab = "Frequency", xlab = "Global Active Power", xlim = c(0,8), xaxp=c(0,6,3), 
       ylim = c(0,1200), xaxs = "r", main = "Global Active Power")
  
  #Now I want to create a .png file of the histogram with set width and height
  dev.copy(png, file = "plog1.png", width = 480, height = 480)
  
  #You must close the graphical device
  dev.off()
  
  
}