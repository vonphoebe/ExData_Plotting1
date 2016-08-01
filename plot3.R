##plot 3
plot3 <- function() {
  with(power03, plot(detail_time, Sub_metering_1, type="l",col="black", ylab="Energy sub metering", xlab=""))
  with(power03, lines(detail_time, Sub_metering_2, type="l", col="red"))
  with(power03, lines(detail_time, Sub_metering_3, type="l", col="blue"))
  legend("topright", col = c("black", "red", "blue"),lty = 1, lwd = 2,inset=c(0.05,0),legend=c("Sub_metering_1", "sub_metering_2", "sub_metering_3" ))
  dev.copy(png, file="plot3.png", width=480, height=480, pointsize=15)
  dev.off()
  cat("Plot3.png is in", getwd())
}
plot3()
