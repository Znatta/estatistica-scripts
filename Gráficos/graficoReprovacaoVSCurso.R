# Instale o pacote ggplot2 se ainda não estiver instalado
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Carregar a biblioteca ggplot2 e readxl
library(ggplot2)
library(readxl)

# Carregar a base de dados
dados <- read_excel("C:\\Estudos\\estatistica-scripts\\Gráficos\\grupo_1 1.xls")

# Criar gráfico de barras comparando a variável curso para cada categoria de reprovações 
grafico <- ggplot(dados, aes(x = curso, y = nroreprova, fill = curso)) +
  geom_boxplot(alpha = 0.6) +  
  labs(title = "Gráfico de Boxplot de Curso por Reprovação",
       x = "Gênero",
       y = "Numero reprovações") + 
  theme_minimal() +
  scale_fill_manual(values = c("sistemas" = "blue", "agro_flor" = "pink"))

print(grafico)



