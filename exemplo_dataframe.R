# Exemplo de uso de dataframe

nome = c("Edmar", "Pedro")
idade = c(30, 20)
salario = c(1000, 2000)
cadastro = data.frame(nome,idade,salario)
filhos = c(1, 2)

# Inclusão de coluna no dataframe

cadastro$filhos = filhos
aumento = c((salario * 0.06) + salario)
cadastro$aumento = aumento

cadastro

write.csv2(cadastro, file = "teste.csv")

# setwd("~/aula_r")