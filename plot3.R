##plot3.r
##Reads Data from file prints line graph of sub Metered KW's over time
##saves plot to 480X480PNG file
 
powerData<-read.csv("household_power_consumption.txt", sep = ";")
smet1<-powerData[,7]
smet2<-powerData[,8]
smet3<-powerData[,9]

plot(smet1, type = "l", xaxt = "n", ylab = "Energy sub metering", xlab= "")
lines(smet2, col = "red")
lines(smet3, col = "blue")

legend("topright", pch = "_____ ", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))
dev.copy(png, file="plot3.png")