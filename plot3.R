dt <- read.delim("household_power_consumption.txt", header = TRUE, sep = ';')
dt2 <- subset(dt, Date== "1/2/2007" | Date== "2/2/2007")
dateNtime <- strptime(paste(dt2$Date,dt2$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

png(file = "plot3.png")
submetering1 <- as.numeric(dt2$Sub_metering_1)
submetering2 <- as.numeric(dt2$Sub_metering_2)
submetering3 <- as.numeric(dt2$Sub_metering_3)

plot(dateNtime,submetering1, type = "l", xlab = " ", ylab = "Energy sub metering")
lines(dateNtime,submetering2, type = "l", col = "red")
lines(dateNtime,submetering3, type = "l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), 
       lty = 1, lwd = 2.5, col = c("Black","Red","Blue"))
dev.off()