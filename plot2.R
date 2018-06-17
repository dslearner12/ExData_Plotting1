
par(mfrow=c(1,1))

gap<-as.numeric(f$Global_active_power)
##plot to screen
plot(f$dttm, gap, type = "l",ylab="Global Active Power (kilowatts)",xlab="")

dev.copy(png, filename = "plot2.png", width = 480, height = 480, units = "px", bg = "white")
##close file device
dev.off() 
