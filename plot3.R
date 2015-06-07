power <- read.csv("~/data/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")
sub <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#create plot 3
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gloactpo <- as.numeric(sub$Global_active_power)
submet1 <- as.numeric(sub$Sub_metering_1)
submet2 <- as.numeric(sub$Sub_metering_2)
submet3 <- as.numeric(sub$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, submet1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, submet2, type="l", col="red")
lines(datetime, submet3, type="l", col="blue")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()