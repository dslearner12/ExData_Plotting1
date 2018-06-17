
##Load the data
h<-read.delim("./data/household_power_consumption.txt", header = TRUE, sep = ";",fill=TRUE,blank.lines.skip = TRUE,stringsAsFactors =FALSE )
##str(h)
##clean up the NA's posing as ?
h[ h == "?" ] <- NA
##remove the NA's
##f<-na.omit(h)
##head(f)
##tail(f)
##h<-f

##combine the date and time into a datetime column dttm
dt<-h[,1]
##head(dt)
tm<-h[,2]
##head(tm)
x <- paste(dt, tm)
##head(x)
dttm<-strptime(x, "%d/%m/%Y %H:%M:%S")
##head(dttm)

##bind it to the original
hw<-cbind(dttm,h)
##head(hw)

##pull out only the dates we care about
hws<-hw[dttm>="2007-02-01" & dttm<"2007-02-03",]
##head(hws)
##tail(hws)
##str(hws)
f<-na.omit(hws)
head(f)
str(f)
tail(f)

