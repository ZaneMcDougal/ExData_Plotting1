##plot4.R prints 4 graphs in a 2X2 format
par(mfcol= c(2,2))
powerData<-read.csv("smallPowerData.txt", sep = ";")

##Top LEft Global reactive power over time
globalActive<- powerData[,3]
plot(globalActive, type = "l", xaxt = "n", ylab = "Global Active Power (kilowatts)", xlab= "")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

##Bottom Left- 3 submeter values over time
smet1<-powerData[,7]
smet2<-powerData[,8]
smet3<-powerData[,9]

plot(smet1, type = "l", xaxt = "n", ylab = "Energy sub metering", xlab= "")
lines(smet2, col = "red")
lines(smet3, col = "blue")

legend("topright", pch = "_____ ", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))



##Top right voltage over time
voltage<-powerData[,5]
plot(voltage, type = "l", xaxt="n", xlab="datetime")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

##bottom right reactive load over time
plot(reactive, type = "l", xaxt="n", xlab="datetime")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))


dev.copy(png, file="plot4.png")
dev.off()
