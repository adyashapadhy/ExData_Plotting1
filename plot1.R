dt <- read.delim("household_power_consumption.txt", header = TRUE, sep = ';')
dt2 <- subset(dt, Date== "1/2/2007" | Date== "2/2/2007")

png(file= "plot1.png")

with(dt2, hist(as.numeric(Global_active_power), col = "red" ,
          xlab= "Global Active Power (in killowats)",main = paste("Global Active Power")))
dev.off()