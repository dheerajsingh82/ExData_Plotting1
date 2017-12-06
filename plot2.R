### Assignment 1

#######
#######Plot No. 2

library(data.table)
dataset <- fread(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?" )

dataset2 <- subset(dataset, dataset$Date == "1/2/2007" | dataset$Date == "2/2/2007")

dataset2$Date <- as.Date(dataset2$Date, format="%d/%m/%Y")

datetime <- paste(as.Date(dataset2$Date), dataset2$Time)

dataset2$Datetime <- as.POSIXct(datetime)

head(dataset2)

with(dataset2, (plot(Global_active_power ~ Datetime, type ="l", ylab = "Global Active Power (kilowatts)", xlab="")))

png("plot2.png", width=480, height=480)

dev.off()

## Complete
