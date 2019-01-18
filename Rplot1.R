## Plot 1
## load the data set
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",
                   na.strings = "?", stringsAsFactors = FALSE)

##  subset the data based on the date we need
data1 <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

##  open device
png(filename = "./plot1.png", width = 480, height = 480, units="px")

##  plot figure
hist(data1$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

##  close device
dev.off()
