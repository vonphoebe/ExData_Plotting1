##reading the data 
file <- unzip("exdata-data-household_power_consumption.zip")
power <- read.table(file, header=T, sep=";", stringsAsFactors = FALSE)
str(power)
##data from the dates 2007-02-01 and 2007-02-02 
power02 <- subset(power, Date== "1/2/2007"|Date=="2/2/2007") 
power03 <- power02


##converting dates 
power03$detail_time <- paste(power03$Date, power03$Time)
power03$detail_time <- strptime(power03$detail_time, "%d/%m/%Y %H:%M:%S")
##converting character columns to numeric 
power03$Global_active_power <- as.numeric(as.character(power03$Global_active_power))
power03$Global_reactive_power <- as.numeric(as.character(power03$Global_reactive_power))
power03$Voltage <- as.numeric(as.character(power03$Voltage))
power03$Global_intensity <- as.numeric(as.character(power03$Global_intensity))
power03$Sub_metering_1 <- as.numeric(as.character(power03$Sub_metering_1))
power03$Sub_metering_2 <- as.numeric(as.character(power03$Sub_metering_2))
power03$Sub_metering_3 <- as.numeric(as.character(power03$Sub_metering_3))
str(power03)


##plot 1 
plot1 <- function() {
  hist(power03$Global_active_power, col= "red", breaks = 11,  xaxt="n", 
       yaxt="n",xlab="Global Active Power (kilowatts)", main="Global Active Power")
  axis(1, at = seq(0,6,by=2)) #xlim=c(0,6),ylim=c(0,1200)
  axis(2, at=seq(0, 1200, by=200 ))
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
  cat("Plot1.png is in", getwd())
}
plot1()