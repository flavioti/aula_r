detach(Banco)
library(readxl)
Banco <- read_excel("arquivos/Banco.xlsx")
#View(Banco)

attach(Banco)

Banco$data_atual = Sys.Date()

idade = round(difftime(data_atual,datanasc)/365.25)
idade <- as.numeric(idade)

Banco$idade = idade

fax_etaria = cut(Banco$idade, breaks = c(46,50,60,70,80), labels = c(1,2,3,4,5), right = T)

Banco$fax_etaria = fax_etaria

Banco

