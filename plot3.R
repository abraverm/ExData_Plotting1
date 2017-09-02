source(file="data.R") # prepare dataset
png(filename = "plot3.png")
plot.new()
title(main="")
with(dataset, {
  plot(DateTime, Sub_metering_1, type = "l", ylab="Energy sub metering", xlab="", col="black")
  lines(DateTime, Sub_metering_2, type = "l", ylab="Energy sub metering", xlab="", col="red")
  lines(DateTime, Sub_metering_3, type = "l", ylab="Energy sub metering", xlab="", col="blue")
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),  col=c("black","blue","red") )
})
dev.off()