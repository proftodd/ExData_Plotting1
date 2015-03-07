if (!exists("power_data")) {
  source("load_data.R")
}

# Build the first plot: Histogram of Global Active Power
png(file = "plot1.png")
hist(power_data$Global_active_power, breaks=12, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.off()