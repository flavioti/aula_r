rm(list=ls(all=TRUE))
setwd("/home/flavio/aula_r/warehouse")
options("scipen" = 2)

arquivo <-read.table(file="Arquivo_Valorizacao_Ambiental.csv", header=T,sep=",")
attach(arquivo)
#
# Sturges
#
summary(Valor)
dim(arquivo)
#
# Sturges
#
k = 1 + 3.3 *log10(43)
#
arquivo$faixavalor <- cut(arquivo$Valor
                          , breaks = c(49999,102067, 154134,206201,258268,310225,362402)
                          , right = T
                          , labels = c("[ 50000 a 102067]","(102067 a 154134]","(154134 a 206201]","(206201 a 258268]", "(258268 a 310225]","(310225 a 362402]")
)
table(arquivo$faixavalor, arquivo$AV200m)
prop.table(table(arquivo$faixavalor,arquivo$"AV200m"))
#
arq<-read.table(file="/home/flavio/aula_r/warehouse/Arq_trab3.csv", header=T,sep=",")
attach(arq)
#
View(arq)

#
Sexo<-as.factor(Sexo)
Cor_pele<-as.factor(Cor_pele)
#
#Distribuição de frequência para variável Sexo
fa_pop=table(Sexo) ##frequencia absoluta
fa_pop
#

fr_pop=fa_pop/sum(fa_pop) ##frequencia relativa
fr_pop
#
fp_pop=100*fr_pop ##fp=frequencia percentual
fp_pop
#
dist_pop=cbind(fa_pop,fp_pop) ##distribuicao de frequências
dist_pop
#
install.packages("fdth")
require(fdth)
x=fdt(idade)
#
# usa a fórmula de Sturges para calcular o número de categorias
classe=fdt(idade,breaks="Sturges")
classe
#
summary(idade)
summary (Anos_estudo)
#
# gráfico de setor (pizza)
install.packages("ggplot2")
pie(table(Sexo))
text(locator(n=1), paste(round(prop.table(table(Sexo))[1], digits=2)*100,"%"))
text(locator(n=1), paste(round(prop.table(table(Sexo))[2], digits=2)*100,"%"))
#
fa_pop=table(Sexo) #frequencia absoluta
barplot(fa_pop) #plota gráfico
plot(Sexo) ##plota gráfico
#
amostra = arq[sample( 1: nrow (arq), 40, replace = FALSE),]
#
View(amostra)
amostra
Sexo_amostra <- as.factor(amostra$Sexo)
Sexo_amostra
cor_pele_amostra <- as.factor(amostra$Cor_pele)
#
#Distribuição de frequência para variável Sexo
fa_ams=table(amostra$Sexo) ##frequencia absoluta
fa_ams

