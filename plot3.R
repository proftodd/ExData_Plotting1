if (!exists("power_data")) {
  source("load_data.R")
}

# Build the third plot: Three types of submetering vs. Time
png(file = "plot3.png")
plot(power_data$Time, power_data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(power_data$Time, power_data$Sub_metering_1, type="l")
lines(power_data$Time, power_data$Sub_metering_2, type="l", col="red")
lines(power_data$Time, power_data$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"),
       legend=colnames(power_data)[7:9], lty=1)
dev.off()
