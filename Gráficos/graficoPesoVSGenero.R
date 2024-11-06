# Instale o pacote ggplot2 se ainda não estiver instalado
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Carregar a biblioteca ggplot2 e readxl
library(ggplot2)
library(readxl)

# Carregar a base de dados
dados <- read_excel("grupo_1 1.xls")

# Criar gráfico de barras comparando a variável peso para cada categoria de genero

grafico <- ggplot(dados, aes(x = genero, y = peso, fill = genero)) +
  geom_violin(alpha = 0.6) +  
  labs(title = "Gráfico de Violino de Peso por Gênero",
       x = "Gênero",
       y = "Peso") + 
  theme_minimal() +
  scale_fill_manual(values = c("masculino" = "blue", "feminino" = "pink"))

print(grafico)






