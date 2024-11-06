# Instale o pacote se ainda não tiver instalado
install.packages("readxl")

# Carregue o pacote
library(readxl)

# Carregue o arquivo de dados
dados <- read_excel("grupo_1 1.xls")


# Selecionar apenas as variáveis contínuas de interesse
variaveis_continuas <- dados[, c("peso", "nroreprova", "hrsinternet")]

moda <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

# Calcular estatísticas para cada coluna selecionada
estatisticas <- data.frame(
  Média = sapply(variaveis_continuas, mean, na.rm = TRUE),
  Mediana = sapply(variaveis_continuas, median, na.rm = TRUE),
  Moda = sapply(variaveis_continuas, moda),
  Variância = sapply(variaveis_continuas, var, na.rm = TRUE),
  `Desvio Padrão` = sapply(variaveis_continuas, sd, na.rm = TRUE)
)

# Exibir a tabela de estatísticas
print(estatisticas)

view(estatisticas)

