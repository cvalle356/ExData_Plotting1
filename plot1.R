power <- read.csv("~/data/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")
sub <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#create plot 1
#str(subSetData)
gloactpo <- as.numeric(sub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gloactpo, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()