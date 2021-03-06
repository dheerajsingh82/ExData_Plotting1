### Assignment 1

#######
#######Plot No. 3

library(data.table)
dataset <- fread(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?" )

dataset2 <- subset(dataset, dataset$Date == "1/2/2007" | dataset$Date == "2/2/2007")

dataset2$Date <- as.Date(dataset2$Date, format="%d/%m/%Y")

datetime <- paste(as.Date(dataset2$Date), dataset2$Time)

dataset2$Datetime <- as.POSIXct(datetime)

head(dataset2)

with(dataset2, {
        plot(Sub_metering_1 ~ Datetime, type ="l",
             ylab ="Global Active Power (kilowatts)", xlab ="")
        lines(Sub_metering_2 ~ Datetime, col ='Red')
        lines(Sub_metering_3 ~ Datetime, col ='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

png("plot3.png", width=480, height=480)
dev.off()

## Complete
