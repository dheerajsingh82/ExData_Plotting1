### Assignment 1

#######
#######Plot No. 1

library(data.table)
dataset <- fread(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?" )

dataset2 <- subset(dataset, dataset$Date == "1/2/2007" | dataset$Date == "2/2/2007")
dataset2$Date <- as.Date(dataset2$Date, format="%d/%m/%Y")

head(dataset2)

hist(dataset2$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

png("plot1.png", width=480, height=480)
dev.off()

## Complete


