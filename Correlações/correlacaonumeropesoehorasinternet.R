# Carrega a biblioteca
library(readxl)

# Lê o arquivo Excel
dados <- read_excel("grupo_1 1.xls")

# correlação entre duas colunas
correlacao <- cor(dados$hrsinternet, dados$peso, method = "pearson")

# 1 indica uma correlação perfeita e positiva: se X aumenta, Y aumenta de forma proporcional.
#-1 indica uma correlação perfeita e negativa: se X aumenta, Y diminui de forma proporcional.
# 0 indica que não há correlação linear entre as variáveis.

print(correlacao)