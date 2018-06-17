##prep data
gap<-as.numeric(f$Global_active_power)
s1<-as.numeric(f$Sub_metering_1)
s2<-as.numeric(f$Sub_metering_2)
s3<-as.numeric(f$Sub_metering_3)
v<-as.numeric(f$Voltage)
grp<-as.numeric(f$Global_reactive_power)

nm<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")

##set up multiple plot areas
par(mfrow=c(2,2))

##plot to screen top left
plot(f$dttm, gap, type = "l",ylab="Global Active Power (kilowatts)",xlab="")

##plot to screen top right
plot(f$dttm, v, type = "l",ylab="Voltage",xlab="datetime")

##plot to screen bottom left
plot(f$dttm, s1, type='l', xlab='', ylab='Energy sub metering')
points(f$dttm, s2, type='l', col="red")
points(f$dttm, s3, type='l', col="blue")
legend("topright",nm, lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))

##plot to screen bottom right
plot(f$dttm, grp, type = "l",ylab="Global Reactive Power",xlab="datetime")

##copy to file
dev.copy(png, filename = "plot4.png", width = 480, height = 480, units = "px", bg = "white")
##close file device
dev.off() 
