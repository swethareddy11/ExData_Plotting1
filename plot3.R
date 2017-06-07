
##PLOT3.R
plot(data$DateTime, as.numeric(as.character(data$Sub_metering_1)),type='l',ylab="Energy sub metering", xlab="")
lines(data$DateTime,as.numeric(as.character(data$Sub_metering_2)),type='l',col="red")
lines(data$DateTime,as.numeric(as.character(data$Sub_metering_3)),type='l',col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),lwd=c(1,1))
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()