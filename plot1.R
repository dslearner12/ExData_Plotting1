par(mfrow=c(1,1))

gap<-as.numeric(f$Global_active_power)
##plot to screen
hist(gap,freq=TRUE,col="thistle1",xlab="Global Active Power (kilowatts)",main="Global Active Power")

dev.copy(png, filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")
##close file device
dev.off() 
