#Get data from zip file and create condencedData.csv
extractData <- function() {
saveLoc <- "./data/exdata_data_household_power_consumption.zip"
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
              saveLoc, method = "curl")
unzip(saveLoc, exdir = "./data")
allData <- read.csv("./data/household_power_consumption.txt",
                    sep = ";", na.strings = "?")

library(lubridate)
condencedData <- allData[(dmy(allData$Date) == dmy("01/02/2007") |
             dmy(allData$Date) == dmy("02/02/2007")),]
write.csv(condencedData, "./data/condencedData.csv", row.names = FALSE)
}
