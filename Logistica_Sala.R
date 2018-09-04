
library(readxl)
Bebes <- read_excel("/home/flavio/aula_r/arquivos/Bebes.xlsx")
View(Bebes)

attach(Bebes)

install.packages("glm2")
library(glm2)


Logistica <-glm2 (low ~ ht +age +lwt +smoke+ptl
                 , family= binomial)


summary(Logistica)

probabilidade <-predict(Logistica, Bebes , type = "response")
Bebes$probabilidade <-probabilidade
Bebes
round (previsao <- ifelse(probabilidade >= 0.5,1,0),digits = 2)

Bebes$previsao <- previsao
Bebes
View(Bebes)

table(previsao,low)


classificacao_geral <-((121+47)/(121+47+89+12))*100
classificacao_geral

