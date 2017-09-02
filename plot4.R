source(file="data.R") # prepare dataset
png(filename = "plot4.png")
plot.new()
par(mfrow = c(2,2), mar= c(4,4,2,1), oma=c(0,0,2,0))
title(main="")
with(dataset, {
  plot(DateTime, Global_active_power, type = "l", ylab="Global Active Power (killowats)", xlab="")
  plot(DateTime, Voltage, type = "l", ylab="Voltage")
  plot(DateTime, Sub_metering_1, type = "l", ylab="Energy sub metering", xlab="", col="black")
  lines(DateTime, Sub_metering_2, type = "l", ylab="Energy sub metering", xlab="", col="red")
  lines(DateTime, Sub_metering_3, type = "l", ylab="Energy sub metering", xlab="", col="blue")
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),  col=c("black","blue","red") )
  plot(DateTime, Global_reactive_power, type = "l")
  
})
dev.off()