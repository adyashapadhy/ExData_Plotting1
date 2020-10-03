dt <- read.delim("household_power_consumption.txt", header = TRUE, sep = ';')
dt2 <- subset(dt, Date== "1/2/2007" | Date== "2/2/2007")


png(file = "plot2.png")
dateNtime <- strptime(paste(dt2$Date,dt2$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot(dateNtime, as.numeric(dt2$Global_active_power), type = "l", ylab = "Global Active Power (in killowatts)", xlab = " ")

dev.off()
