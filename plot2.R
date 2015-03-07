if (!exists("power_data")) {
  source("load_data.R")
}

# Build the second plot: Global Active Power vs. Time
png(file = "plot2.png")
plot(power_data$Time, power_data$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(power_data$Time, power_data$Global_active_power, type="l")
dev.off()