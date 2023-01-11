library(tidyquant)
library(dplyr)
prices <- c(
  "VALE3", "BRAP4", "RENT3", "GGBR4",
  "NTCO3", "CIEL3", "SANB11", "TOTS3", "SULA11"
) %>%
  paste0(".SA") %>%   # Colagem de ".SA" em cada Termo
  tq_get(get = "stock.prices", from = " 2010-01-01") %>%
  # RequisiC'C#o para API
  mutate(symbol = sub(".SA", "", symbol))
  # Substituicao de ".SA" por "" na Interface Grafica
write.table(prices, "prices.csv", sep = ",", row.names = FALSE)
# Salva Precos na Tabela "prices.csv" separados por , sem Numero de Linhas
prices <- read.csv("C:/Users/lucas/OneDrive/Documentos/prices.csv") %>%
  mutate(date = as.Date(date))
# Leitura de Valores por Arquivo, convertendo Data em String para Data em Formato de Data

