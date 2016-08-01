
##plot 4
par(mfcol=c(2,2))
with(power03, plot(detail_time, Global_active_power, type="l", 
                   yaxt="n", ylim=c(0,8),xlab="", ylab="Global Active Power (kilowatts)"))
axis(2, yaxp = c(0, 6, 3))

with(power03, plot(detail_time, Sub_metering_1, type="l",col="black", ylab="Energy sub metering", xlab=""))
with(power03, lines(detail_time, Sub_metering_2, type="l", col="red"))
with(power03, lines(detail_time, Sub_metering_3, type="l", col="blue"))
legend("topright", col = c("black", "red", "blue"),lty = 1, lwd = 2,inset=c(0.1,0),bty = "n", legend=c("Sub_metering_1", "sub_metering_2", "sub_metering_3"))

with(power03, plot(detail_time, Voltage, xlab="datetime", type="l",yaxt="n"))
axis(2,yaxp=c(234,246,6))

with(power03, plot(detail_time, Global_reactive_power, type="l", xlab="datetime"))

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
cat("Plot4.png is in", getwd())