#media variavel filho


filhosNormal <- mean(Banco_1$filhos, na.rm = TRUE)

filhosNormal

detach(Banco_1)
attach(Banco_1)


table(Banco_1$sexo)
table(Banco_1$Situacao)

table(Banco_1$sexo,Banco_1$Situacao)

library(gmodels)

CrossTable(Banco_1$sexo, Banco_1$Situacao, chisq = TRUE)