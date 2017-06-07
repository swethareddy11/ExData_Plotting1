
##PLOT4.R

par(mfrow=c(2,2))
plot(data$DateTime,as.numeric(as.character(data$Global_active_power)),type ="l",ylab="Global Active Power",xlab="")
plot(data$DateTime,as.numeric(as.character(data$Voltage)),type ="l",ylab="Voltage",xlab="datetime")
plot(data$DateTime, as.numeric(as.character(data$Sub_metering_1)),type='l',ylab="Energy sub metering", xlab="")
lines(data$DateTime,as.numeric(as.character(data$Sub_metering_2)),type='l',col="red")
lines(data$DateTime,as.numeric(as.character(data$Sub_metering_3)),type='l',col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(1,1),col=c("black","red","blue"))
plot(data$DateTime, as.numeric(as.character(data$Global_reactive_power)),type='l',ylab="Global_reactive_power", xlab="datetime")
dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()