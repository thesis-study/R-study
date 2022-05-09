library(datasets)
install.packages("forecast")
library(forecast)

auto.arima(Nile)
result <- arima(Nile, order = c(1, 1, 1))
pred <- forecast(result, h=5)
pred

plot(pred)
