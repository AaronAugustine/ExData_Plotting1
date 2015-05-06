#EDA plot2.R

#Call read me script to ring in data
source("ReadData.R",echo=TRUE)

png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "white")

with(subdata, plot(Timestamp, Global_active_power
                   ,xlab=""
                   ,ylab="Global Active Power(kilowatts)"
                   ,type="l"))

dev.off() 