#Four panel plot filled row-wise with Date_Time on the x-axis and the following y:
#1) Global Active Power
#2) Voltage
#3) Energy sub metering
#4) Global_reactive_power
generatePlot4 <- function() {
        data <- read.csv("./data/condencedData.csv")
        data <- mutate(data, Date_Time = as.POSIXct(strptime(
                paste(data$Date, data$Time),
                format = "%Y-%m-%d %H:%M:%S")))

        png(file = "./plot4.png",
            width = 480,
            height = 480)

        par(mfrow = c(2,2))

        #Top Left
        with(data, plot(Date_Time, Global_active_power,
                        xlab = "",
                        ylab = "Global Active Power",
                        type = "l"))

        #Top Right
        with(data, plot(Date_Time, Voltage,
                        xlab = "datetime",
                        ylab = "Voltage",
                        type = "l"))

        #Bottom Left
        with(data, plot(Date_Time, Sub_metering_1,
                        type = "l",
                        xlab = "",
                        ylab = "Energy sub metering"))

        with(data, lines(Date_Time, Sub_metering_2, col = "red"))
        with(data, lines(Date_Time, Sub_metering_3, col = "blue"))

        legend("topright", lty = 1,
               col = c("black", "red", "blue"), bty = "n",
               legend = grep("^[Sub]", names(data), value = TRUE))

        #Bottom Right
        with(data, plot(Date_Time, Global_reactive_power,
                        xlab = "datetime",
                        ylab = "Global_reactive_power",
                        type = "l"))


        dev.off()
}

generatePlot4()
