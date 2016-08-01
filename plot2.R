##plot 2 
plot2 <- function() {
  with(power03, plot(detail_time, Global_active_power, type="l", 
                     yaxt="n", ylim=c(0,8),xlab="", ylab="Global Active Power (kilowatts)"))
  axis(2, yaxp = c(0, 6, 3))
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
  cat("Plot2.png is in", getwd())
}
plot2()