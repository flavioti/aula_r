detach(Salario)
attach(Salario)

library(dplyr)

agregar = summarize(group_by(salario,id),
                    salario_m=mes(salario_m),
                    data_pagamento_min = min(data_pagamento)
                    )

agregar

