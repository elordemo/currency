#Arjantin pesosu'nun Amerikan doları karşısındaki 10 yıllık verileri'nin görselleştirilmesi. 

install.packages("ggplot2")
library(ggplot2)

install.packages("priceR")
library(priceR)

install.packages("plotly")
library(plotly)

install.packages("hrbrthemes")
library(hrbrthemes)

#Veriler soruda istenilen zaman aralıklarında currency adında veri ile tanıtıldı.
currency <- historical_exchange_rates("USD", to = "ARS",
                                      start_date = "2013-01-01", end_date = "2023-01-01")

str(currency)

currency %>%
  ggplot( aes(x=date, y=one_USD_equivalent_to_x_ARS)) +
  geom_area(fill="#69b3a2", alpha=0.5) +
  geom_line(color="#69b3a2") +
  labs(title = "Arjantin pesosu'nun 2013 ve 2023 yılları arasında Dolar bazında değeri ",         
       y='1 Dolar kaç Arjantin pesosu',         
       x='Tarih')
