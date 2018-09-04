detach(Banco)

attach(Banco)

Banco[order(Banco$salário, decreasing = TRUE), ]
Banco$xx <- replace(salário, salário >= 60000, 60000)
Banco
boxplot(Banco$xx)
library(tcltk2)

caixa = tkmessageBox(
  title = "Arquivo",
  message = "Olá mundo",
  icon = "info",
  type = "ok"
)

qqnorm(salário);qqline(salário, col="blue")

