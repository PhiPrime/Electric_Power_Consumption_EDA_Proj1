#Line plot of Date_Time vs Energy sub metering
generatePlot3 <- function() {
        library(lubridate)
        library(dplyr)
        data <- read.csv("./data/condencedData.csv")
        data <- mutate(data, Date_Time = as.POSIXct(strptime(
                paste(data$Date, data$Time),
                format = "%d/%m/%Y %H:%M:%S")))
        png(file = "./plot3.png",
            width = 480,
            height = 480)
        with(data, plot(Date_Time, Sub_metering_1,
                        type = "l",
                        xlab = "",
                        ylab = "Energy sub metering"))

        with(data, lines(Date_Time, Sub_metering_2, col = "red"))
        with(data, lines(Date_Time, Sub_metering_3, col = "blue"))

        legend("topright", lty = 1, col = c("black", "red", "blue"),
               legend = grep("^[Sub]", names(data), value = TRUE))
        dev.off()
}
