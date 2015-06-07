power <- read.csv("~/data/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")
sub <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#create plot 4
datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gloactpo <- as.numeric(subSetData$Global_active_power)
gloactpo <- as.numeric(subSetData$Global_reactive_power)
volt <- as.numeric(sub$Voltage)
submet1 <- as.numeric(sub$Sub_metering_1)
submet2 <- as.numeric(sub$Sub_metering_2)
submet3 <- as.numeric(sub$Sub_metering_3)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, gloactpo, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, volt, type="l", xlab="datetime", ylab="voltage")

plot(datetime, submet1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, submet2, type="l", col="red")
lines(datetime, submet3, type="l", col="blue")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, gloactpo, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()