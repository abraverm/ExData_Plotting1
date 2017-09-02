source(file="data.R") # prepare dataset
png(filename = "plot2.png")
plot.new()
title(main="")
with(dataset, {
  plot(DateTime, Global_active_power, type = "l", ylab="Global Active Power (killowats)", xlab="")
})
dev.off()