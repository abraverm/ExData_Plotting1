source(file="data.R") # prepare dataset
png(filename = "plot1.png")
plot.new()
with(dataset, hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (killowats)", col="red"))
dev.off()