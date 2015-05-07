#This code is for the EDA project 1   

#reference packages
library(downloader)

#set file url and finalname with path
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filename <-paste(getwd(),"/exdata_data_household_power_consumption.zip",sep="")

#download file and unzip it to your working directory
#comments out download and unzip...was testing off line
download(fileUrl1, dest=filename, mode="wb") 
unzip (filename, exdir = getwd())

#read in data, subset to 2 days, and convert time
#stayed with read.table vs read.csv.sql...wanted to keep na.strings option
data<-read.csv("./household_power_consumption.txt",header=TRUE,sep=";",na.strings=c("?"),colClasses=c(rep("character",2),rep("numeric",7)))
data$Timestamp <- strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")
subdata<-data[as.Date(data$Timestamp) >= "2007-02-01" & as.Date(data$Timestamp) < "2007-02-03",]
