##plot2.r
##Reads Data  from file prints line graph of KW's over time
##saves plot to 480X480PNG file
 
powerData<-read.csv("household_power_consumption.txt", sep = ";")
globalActive<- powerData[,3]
plot(globalActive, type = "l", xaxt = "n", ylab = "Global Active Power (kilowatts)", xlab= "")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))
dev.copy(png, file="plot2.png")