source('load_data.R')

png(file = 'plot3.png')
with(data, {
    plot(datetime, Sub_metering_1, type = 'n', xlab = '', ylab = 'Energy sub metering')
    lines(datetime, Sub_metering_1, type = 'l')
    lines(datetime, Sub_metering_2, type = 'l', col = "red")
    lines(datetime, Sub_metering_3, type = 'l', col = "blue")
})
legend("topright", col=c('black','red','blue'), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 1)
dev.off()
