
##PLOT2.R

plot(data$DateTime, as.numeric(as.character(data$Global_active_power)),type='l',ylab="Global Active Power (Kilowatts)", xlab="")
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()