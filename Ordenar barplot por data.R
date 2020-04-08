# Cria um dataframe com 30 registros aleatorios
datas <- data.frame(data = sample(seq(as.Date("2001-01-01"), by = "month", along = ts(rnorm(36), frequency = 12, start = 2001)), size = 30), quantidade = sample(c(1:5), size = 30, replace = T))

# Ordenamos o dataframe usando a coluna data
datas <- datas[order(as.Date(datas$data)),]

# Plot do resultado
barplot(datas$quantidade, beside = T, las=3, names.arg = datas$data)