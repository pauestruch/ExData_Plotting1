source('load_data.R')

png(file = 'plot4.png')
par(mfcol=c(2,2))
with(data, {
    plot(datetime, Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power')
    plot(datetime, Sub_metering_1, type = 'n', xlab = '', ylab = 'Energy sub metering')
    lines(datetime, Sub_metering_1, type = 'l')
    lines(datetime, Sub_metering_2, type = 'l', col = "red")
    lines(datetime, Sub_metering_3, type = 'l', col = "blue")
    legend("topright", col=c('black','red','blue'), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
           lwd = 1, bty = 'n')
    plot(datetime, Voltage, type = 'l')
    plot(datetime, Global_reactive_power, type = 'l')
})
dev.off()
