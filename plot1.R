setwd("C:/Users/Oluwoleo/Desktop/self training/Data Science Track")
 
--##'Load the data
ex_data <-read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

##convert the Date and Time variables to Date/Time classes

ex_data$Date <- as.Date(ex_data$Date, format="%d/%m/%Y")

## Subsetting the data
 ex_data_subset <- subset(ex_data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## testing data 
head(ex_data_subset)

+## Converting dates
  datetime <- paste(as.Date(ex_data_subset$Date), ex_data_subset$Time)
ex_data_subset$Datetime <- as.POSIXct(datetime)

globalActivePower <- as.numeric(Exdata_subset$Global_active_power) 

 hist(as.numeric(ex_data_subset$Global_active_power),main="Global Active Power", xlab="Global Active Power (kilowatts)",
      ylab="Frequency", col="Red")