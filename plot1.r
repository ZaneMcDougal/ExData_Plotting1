##plot1.R 
##Reads data from file and prints histogram of
##Global Active power and saves to 480X480 PNG file

powerData<-read.csv("household_power_consumption.txt")
globalActive<- powerData[,3]
hist(globalActive, main= "Global Active Power", xlab = "Global Active Power (kilowatts)", col= "red")
dev.copy(png, file="plot1.png")