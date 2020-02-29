
# if(!require("prophet)){install.packages("prophet)}

library(prophet)


prophecy <- prophet( as.data.frame(some_data),
                     seasonality.mode = "multiplicative",
                     mcmc.samples = 500 )

prophecy_future <- make_future_dataframe( prophecy, periods = 144, freq = 'month') 

forecast_prophet <- predict(prophecy, prophecy_future)

plot(forecast_prophet)