household_power_consumption <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";")

household_power_consumption$Date <- as.Date(household_power_consumption$Date, format="%d/%m/%Y")
household_power_consumption$Time <- format(household_power_consumption$Time, format="%H:%M:%S")
household_power_consumption$Global_active_power <- as.numeric(household_power_consumption$Global_active_power)
household_power_consumption$Global_reactive_power <- as.numeric(household_power_consumption$Global_reactive_power)
household_power_consumption$Voltage <- as.numeric(household_power_consumption$Voltage)
household_power_consumption$Global_intensity <- as.numeric(household_power_consumption$Global_intensity)
household_power_consumption$Sub_metering_1 <- as.numeric(household_power_consumption$Sub_metering_1)
household_power_consumption$Sub_metering_2 <- as.numeric(household_power_consumption$Sub_metering_2)
household_power_consumption$Sub_metering_3 <- as.numeric(household_power_consumption$Sub_metering_3)

household_power_consumption_two_days <- subset(household_power_consumption, Date == "2007-02-01" | Date =="2007-02-02")

png("plot1.png", width=480, height=480)
hist(household_power_consumption_two_days$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()