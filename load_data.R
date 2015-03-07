url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zip_file <- "exdata-data-household_power_consumption.zip"
txt_file <- "household_power_consumption.txt"

if (!file.exists(txt_file)) {
  if (!file.exists(zip_file)) {
    install.packages("curl")
    download.file(url, zip_file, "curl")
  }
  unzip(zip_file)
}

power_data <- read.csv(txt_file, sep = ";", na.strings="?",
#                       col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),
#                       skip=66630, nrows=100,
                       colClasses=c("character", "character", rep("numeric", 7)))
power_data$Time <- strptime(paste(power_data$Date, power_data$Time), "%d/%m/%Y %H:%M:%S")
power_data$Date <- as.Date(power_data$Date, "%d/%m/%Y")
power_data <- power_data[power_data$Date > as.Date("2007-01-31") & power_data$Date < as.Date("2007-02-03"),]