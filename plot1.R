#EDA plot1.R   

#Call read me script to read in data
source("ReadData.R",echo=TRUE)

png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")

hist(subdata$Global_active_power,xlab="Global Active Power(kilowatts)"
                                ,ylab="Frequency"
                                ,main="Global Active Power"
                                ,col="red"
                                )
dev.off()                            