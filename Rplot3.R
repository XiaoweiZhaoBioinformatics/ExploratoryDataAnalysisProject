##  Plot 3
##  open device
png(filename = "./plot3.png", width = 480, height = 480, units="px")

##  plot figure and add legend
plot(data1$Time2, data1$Sub_metering_1, xlab = "", 
     ylab = "Energy sub metering", type = "l")
lines(data1$Time2, data1$Sub_metering_2, col = "red")
lines(data1$Time2, data1$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lwd = 1, col = c("black","red","blue"))

##  close device
dev.off()