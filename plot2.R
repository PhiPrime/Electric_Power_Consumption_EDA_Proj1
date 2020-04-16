#Line plot of Date_Time vs. Global Active Power
generatePlot2 <- function() {
        library(lubridate)
        library(dplyr)
        data <- read.csv("./data/condencedData.csv")
        data <- mutate(data, Date_Time = as.POSIXct(strptime(
                paste(as.character(data$Date), as.character(data$Time)),
                format = "%d/%m/%Y %H:%M:%S")))
        png(file = "./plot2.png",
             width = 480,
             height = 480)
        with(data, plot(Date_Time, Global_active_power,
                        type = "l",
                        xlab = " ",
                        ylab = "Global Active Power (kilowatts)"))
        dev.off()
}
