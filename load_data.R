library(dplyr)

all_data <- read.csv('household_power_consumption.txt', sep=';', na.strings='?', 
                     colClasses=c("character", "character", rep("numeric",7)))


data <- filter(all_data, Date == '2/2/2007' | Date == '1/2/2007')
data$datetime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
