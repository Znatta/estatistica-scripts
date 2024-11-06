# Instale o pacote se ainda não tiver instalado
install.packages("readxl")

# Carregue o pacote
library(readxl)

# Carregue o arquivo de dados
dados <- read_excel("grupo_1 1.xls")

# Calcular a média e o desvio padrão
media_amostral <- mean(dados$nroreprova)
desvio_padrao <- sd(dados$nroreprova)
n <- nrow(dados)  # Tamanho da amostra

# Definindo a média hipotética e o nível de significância
media_hipotetica <- 4        # Média hipotética sob H0
alpha <- 0.05                # Nível de significância

# Calculando a estatística Z
z <- ((media_amostral - media_hipotetica) / (desvio_padrao / sqrt(n)))

# Definindo os valores críticos
valor_critico_inferior <- qnorm(alpha / 2)    # Valor crítico inferior
valor_critico_superior <- qnorm(1 - alpha / 2)  # Valor crítico superior

# Tomando a decisão
if (z < valor_critico_inferior || z > valor_critico_superior) {
  decisao <- "Rejeita H0"
} else {
  decisao <- "Não rejeita H0"
}

# Plotar a distribuição normal
x <- seq(-4, 4, length = 100)  # Gera uma sequência de -4 a 4
y <- dnorm(x)                  # Calcula a densidade da normal

# Criar o gráfico
plot(x, y, type = "l", main = "Distribuição Normal", ylab = "Densidade", xlab = "Z", lwd = 2, ylim = c(0, max(y) * 1.1))

# Adicionar as áreas de rejeição
polygon(c(-4, x[x < valor_critico_inferior], valor_critico_inferior), c(0, y[x < valor_critico_inferior], 0), col = "red", border = NA)
polygon(c(valor_critico_superior, x[x > valor_critico_superior], 4), c(0, y[x > valor_critico_superior], 0), col = "red", border = NA)

# Adicionar linha do ponto Z
abline(v = z, col = "blue", lwd = 2, lty = 2)

# Adicionar a linha de densidade no valor de Z
points(z, dnorm(z), col = "blue", pch = 16, cex = 1.5)  # Adiciona um ponto azul no gráfico

# Adicionar legenda
legend("topright", legend = c("Área de rejeição",  "Z calculado"), fill = c("red", "blue"), border = NA)

# Exibindo resultados
cat("Estatística Z:", z, "\n")
cat("Valor crítico inferior:", valor_critico_inferior, "\n")
cat("Valor crítico superior:", valor_critico_superior, "\n")
cat("Decisão:", decisao, "\n")
