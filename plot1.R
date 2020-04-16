#Histogram of Global Active Power (kilowatts)
generatePlot1 <- function() {
        data <- read.csv("./data/condencedData.csv")
        png(file = "./plot1.png",
            width = 480,
            height = 480)
        hist(data$Global_active_power,
             xlab = "Global Active Power (kilowatts)",
             col = "red",
             main = "Global Active Power")
        dev.off()
}
