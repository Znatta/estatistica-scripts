# Instalar e carregar a biblioteca
install.packages("readxl")
library(readxl)

# Ler o arquivo Excel
dados <- read_excel("grupo_1 1.xls")

valores <- dados$hrsinternet

# Calcular a média e o desvio padrão da amostra
media_amostra <- mean(valores)
desvio_padrao <- sd(valores)
tamanho_amostra <- length(valores)

# Define o nível de confiança
nivel_confianca <- 0.95
alpha <- 1 - nivel_confianca

# Calcular o valor crítico Z (para um intervalo de confiança de 95%, Z ≈ 1.96)
z_critico <- qnorm(1 - alpha / 2)
print(z_critico)

# Calcular o erro padrão
erro_padrao <- desvio_padrao / sqrt(tamanho_amostra)

# Calcular o intervalo de confiança
limite_inferior <- media_amostra - z_critico * erro_padrao
limite_superior <- media_amostra + z_critico * erro_padrao

# Exibir os resultados
cat("Média da amostra:", media_amostra, "\n")
cat("Desvio padrão da amostra:", desvio_padrao, "\n")
cat("Intervalo de confiança (", nivel_confianca * 100, "%): [", limite_inferior, ",", limite_superior, "]\n")
