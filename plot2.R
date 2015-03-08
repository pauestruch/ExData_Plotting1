source('load_data.R')

png(file = 'plot2.png')
with(data, plot(datetime, Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)'))
dev.off()
