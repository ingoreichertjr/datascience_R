# Distribuição Binominal

# Uma variável aleatórioa tem Distribuição Binominal quando seu experimento possui 2 resultados:
# Sucesso ou fracasso / Sim ou não

# p = probabilidade de sucesso ou sim
# q = probabilidade de fracasso ou não

# p = 1 - q

# Geralmente são probabilidades empirícas (resultantes de observações) e com variáveis discretas

# Exemplo: A probabilidade de um paciente com um ataque cardíaco morrer do ataque é de 0.04 
# (ou seja, 4 de 100 morrem do ataque). Suponha que tenhamos 5 pacientes que sofrem um ataque cardíaco, 
# qual é a probabilidade de que todos sobrevivam? 

# Para este exemplo, vamos chamar um sucesso um ataque fatal (p = 0.04). 
# Temos n = 5 pacientes e queremos saber a probabilidade de que todos sobrevivam ou, em outras palavras, 
# que nenhum seja fatal (0 sucessos).

# X = Número de sobreviventes ao ataque
# p = 0.04
# n = 5
# dbinom(X, n, p)

?dbinom
a <- dbinom(0, 5, 0.04)
print(a)

# Desenhando a distribuição de probabilidades
graph <- function(n,p) {
  x <- dbinom(0:n, size = n, prob = p)
  barplot(x,ylim=c(0,1),names.arg=0:n,
          main=sprintf(paste('Distribuição Binominal (n,p) ',n,p,sep=',')))
}
graph(5,0.04)

# Criando o gráfico de uma distribuição binomial
x <- seq(0,50,by = 1)
y <- dbinom(x,50,0.5)
png(file = 'dbinom.png')
plot(x,y)
dev.off()

getwd()
setwd("/home/ingo/DSC/FCD/BigDataRAzure/Cap09")
