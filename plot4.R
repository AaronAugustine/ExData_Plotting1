#EDA plot4.R 

#Call read me script to ring in data
source("ReadData.R",echo=TRUE)

png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "white")

par(mfrow = c(2, 2), mar=c(4,4,2,1), oma=c(0,0,0,0))

with(subdata, plot(Timestamp, Global_active_power
                   ,xlab=""
                   ,ylab="Global Active Power(kilowatts)"
                   ,type="l"))

with(subdata, plot(Timestamp, Voltage
                   ,xlab="datetime"
                   ,ylab="Voltage"
                   ,type="l"))

with(subdata, plot(Timestamp, Sub_metering_1, type = "n",xlab="",ylab="Energy Sub Meetering"))
with(subdata, points(Timestamp, Sub_metering_1, col = "black",type="l"))
with(subdata, points(Timestamp, Sub_metering_2, col = "red",type="l"))
with(subdata, points(Timestamp, Sub_metering_3, col = "blue",type="l"))
legend("topright", col = c("black","red", "blue"),lty = 1
       , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

with(subdata, plot(Timestamp, Global_reactive_power
                   ,xlab="datetime"
                   ,ylab="Global_reactive_power"
                   ,type="l"))

dev.off() 