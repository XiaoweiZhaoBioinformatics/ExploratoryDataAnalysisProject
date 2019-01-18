##  Plot 2
##  open device
png(filename = "./plot2.png", width = 480, height = 480, units="px")

##  convert data and time to specific format
data1$Time2 <- strptime(paste(data1$Date,data1$Time),"%d/%m/%Y %H:%M:%S",tz = "GMT")

## plot figure
plot(data1$Time2, data1$Global_active_power, xlab = "", 
     ylab = "Global Active Power (kilowatt)", type = "l")

##  close device
dev.off()