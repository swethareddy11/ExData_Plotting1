x <-read.table("household_power.txt",header=T,sep=";")
lapply(x,class)
library(lubridate)
x$Date <- dmy(x$Date)
x$Time <- as.character(x$Time)
x$DateTime <- paste(x$Date,x$Time)
x$DateTime <-strptime(x$DateTime,"%Y-%m-%d %H:%M:%S")
class(x$DateTime)
start <- which(x$DateTime==strptime("2007-02-01","%Y-%m-%d"))
end <- which(x$DateTime==strptime("2007-02-02 23:59:00","%Y-%m-%d %H:%M:%S"))
data <- x[start:end,]
head(data)


##PLOT1.R
hist(as.numeric(as.character(data$Global_active_power)),main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()