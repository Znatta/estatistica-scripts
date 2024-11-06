# Instale o pacote ggplot2 se ainda não estiver instalado
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Carregar a biblioteca ggplot2 e readxl
library(ggplot2)
library(readxl)

# Carregar a base de dados
dados <- read_excel("grupo_1 1.xls")

# Cria um gráfico de barras comparando a variável curso para cada categoria de genero
grafico <- ggplot(dados, aes(x = curso, fill = genero)) +
  geom_bar(color = "black", alpha = 0.6) + 
  labs(title = "Gráfico de Barras de Curso por Gênero",
       x = "Curso",
       y = "Total") + 
  theme_minimal()
#printa o gráfico 
print(grafico)



