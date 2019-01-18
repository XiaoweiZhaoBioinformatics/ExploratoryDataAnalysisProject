##  Plot 4
##  open device
png(filename = "./plot4.png", width = 480, height = 480, units="px")

##  plot figure and add legend
par(mfrow = c(2,2))
plot(data1$Time2, data1$Global_active_power, xlab = "", 
     ylab = "Global Active Power (kilowatt)", type = "l")

plot(data1$Time2, data1$Voltage, xlab = "datetime", 
     ylab = "Voltage", type = "l")

plot(data1$Time2, data1$Sub_metering_1, xlab = "", 
     ylab = "Energy sub metering", type = "l")
lines(data1$Time2, data1$Sub_metering_2, col = "red")
lines(data1$Time2, data1$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lwd = 1, col = c("black","red","blue"),bty = "n")

plot(data1$Time2, data1$Global_reactive_power, xlab = "datetime", 
     ylab = "Global_reactive_power", type = "l")

##  close device
dev.off()