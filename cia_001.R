data("EuStockMarkets")
head(EuStockMarkets)
tail(EuStockMarkets)
str(EuStockMarkets)
summary(EuStockMarkets)

View(EuStockMarkets)

x <- seq_len(nrow(EuStockMarkets))

plot(x, EuStockMarkets[, "DAX"], type="n", main = "Daily Stock Closing Prices", xaxt="n", xlab="Years", ylab="Stock Prices")

colors <- c("red", "blue", "green", "purple")

for (i in seq_len(ncol(EuStockMarkets))) {
  lines(x, EuStockMarkets[,i], col=colors[i])
  years <- as.integer(time(EuStockMarkets))
  tick.posis <- seq(10, length(years), by = 100)
  axis(1, at = tick.posis, las = 2, labels = years[tick.posis])
}

# Data Dictionary
for (i in 1:10) {
  print(c(EuStockMarkets[i, ]))
}

summary(EuStockMarkets)

for (i in 1:4) {
  error <- EuStockMarkets[, i] - mean(EuStockMarkets[, i])
  print(error)
  n <- length(EuStockMarkets[, i])
  std_dev <- sqrt((error**2)/n)
  print(paste("STD_DEV of", colnames(EuStockMarkets)[i], ":", round(std_dev, 8)))
}


sum(EuStockMarkets[, i]-mean(EuStockMarkets[, 1]))/
std_dev
