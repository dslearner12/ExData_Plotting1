par(mfrow=c(1,1))

s1<-as.numeric(f$Sub_metering_1)
s2<-as.numeric(f$Sub_metering_2)
s3<-as.numeric(f$Sub_metering_3)

nm<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")

plot(f$dttm, s1, type='l', xlab='', ylab='Energy sub metering')
points(f$dttm, s2, type='l', col="red")
points(f$dttm, s3, type='l', col="blue")
legend("topright",nm, lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))

dev.copy(png, filename = "plot3.png", width = 480, height = 480, units = "px", bg = "white")
##close file device
dev.off() 
