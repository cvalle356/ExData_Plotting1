power <- read.csv("~/data/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")
sub <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#create plot 2
datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gloactpo <- as.numeric(sub$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gloactpo, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()