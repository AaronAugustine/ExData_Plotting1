#EDA plot3.R   

#Call read me script to read in data
source("ReadData.R",echo=TRUE)

png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "white")


with(subdata, plot(Timestamp, Sub_metering_1, type = "n",xlab="",ylab="Energy Sub Meetering"))
with(subdata, points(Timestamp, Sub_metering_1, col = "black",type="l"))
with(subdata, points(Timestamp, Sub_metering_2, col = "red",type="l"))
with(subdata, points(Timestamp, Sub_metering_3, col = "blue",type="l"))
legend("topright", col = c("black","red", "blue"),lty = 1
       , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off() 