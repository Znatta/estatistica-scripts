# Instale o pacote se ainda não tiver instalado
install.packages("readxl")

# Carregue o pacote
library(readxl)

# Carregue o arquivo de dados
dados <- read_excel("grupo_1 1.xls")


# Selecionar apenas as variáveis contínuas de interesse
variaveis_categoricas <- dados[, c("curso", "genero", "estado_civil", "biblioteca")]

moda <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

# Calcular estatísticas para cada coluna selecionada
estatisticasCategoricas <- data.frame(
  Moda = sapply(variaveis_categoricas, moda)
)

# Exibir a tabela de estatísticas
print(estatisticasCategoricas)

view(estatisticas)

