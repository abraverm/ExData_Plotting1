# Requirements
library(data.table)
library(dplyr)

# Download and extract the data set
if(!file.exists("./data")){dir.create(("./data"))}
if(!file.exists("./data.zip")){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, destfile = "./data.zip")
  unzip("./data.zip", exdir = "./data")
}

# Load the data
if(!exists("dataset")){
  dataset <- fread("./data/household_power_consumption.txt", na.strings = "?")
  dataset[,DateTime := as.POSIXct(paste(dataset$Date, dataset$Time), format = "%d/%m/%Y %H:%M:%S")]
  dataset <- filter(dataset, DateTime >= as.POSIXct("2007-02-01 00:00:00"), DateTime < as.POSIXct("2007-02-03 00:00:00"))
  
}