if (!exists("power_data")) {
  source("load_data.R")
}

# Build the fourth plot: Four plots in one diagram
png(file = "plot4.png")
par(mfcol = c(2,2))

# Upper-left: Global active power vs. time
plot(power_data$Time, power_data$Global_active_power, type="n", xlab="", ylab="Global Active Power")
lines(power_data$Time, power_data$Global_active_power, type="l")

# Lower-left: Three types of submetering vs. time
plot(power_data$Time, power_data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(power_data$Time, power_data$Sub_metering_1, type="l")
lines(power_data$Time, power_data$Sub_metering_2, type="l", col="red")
lines(power_data$Time, power_data$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"),
       legend=colnames(power_data)[7:9], lty=1)

# Upper-right: Voltage vs. time
plot(power_data$Time, power_data$Voltage, type="n", xlab="datetime", ylab="Voltage")
lines(power_data$Time, power_data$Voltage, type="l")

# Lower-right: Global reactive power vs. time
plot(power_data$Time, power_data$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(power_data$Time, power_data$Global_reactive_power, type="l")
dev.off()