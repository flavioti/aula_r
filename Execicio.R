#1
#criar dataframe, temp nome, sobrenome, cpf e idade
#vamos usar dados fake
#extrair o nono digito do CPF

nameList = c("Emerson", "Flávio", "Maria", "José", "Larissa")
lastNameList = c("Silva", "Sousa", "Santana", "Arimatéia", "Borges")
nationalID = c("39601750860","06503903693", "63681841837", "58327888420", "65854329247")
ageList = c(28, 34, 45, 70, 16)

df = data.frame(nameList, lastNameList, nationalID, ageList)

df$digit = substr(nationalID, 9, 9)
df$fullName =  paste(df$nameList, df$lastNameList, sep = " ")

df

#2

faixasal = cut(Banco$salarin, breaks = c(0,15000,35000,45000,55000,135000), labels = c(1,2,3,4,5), right = T)
Banco$faixasal = faixasal
Banco
View(Banco)

#3 (Se tiver tempo)

Banco$percent = (Banco$salário - Banco$salarin) / Banco$salarin * 100

Banco
View(Banco)
