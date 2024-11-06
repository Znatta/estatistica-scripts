# Instale o pacote ggplot2 se ainda não estiver instalado
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Carregar a biblioteca ggplot2 e readxl
library(ggplot2)
library(readxl)

# Carregar a base de dados
dados <- read_excel("grupo_1 1.xls")

# Criar gráfico de boxplot comparando a variável utiliza biblioteca para horas de uso da internet
grafico <- ggplot(dados, aes(x = biblioteca, y = hrsinternet, fill = biblioteca)) +
  geom_boxplot(alpha = 0.6) +  
  labs(title = "Gráfico de Boxplot de Horas de Internet por Utilização da Biblioteca",
       x = "Utiliza a biblioteca",
       y = "Número de horas de internet utilizadas diariamente") + 
  theme_minimal() +
  scale_fill_manual(values = c("nao" = "blue", "sim" = "pink"))

print(grafico)
