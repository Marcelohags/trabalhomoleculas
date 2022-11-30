#Importando a biblioteca "readr"
library(readr)
#Importando os dados csv
trabalhodeR <- read_csv("C:/Users/mateu/Desktop/Notas/Z - Trabalho de R/trabalhodeR.csv")
View(trabalhodeR)


#Importando a biblioteca "ggplot2"
library(ggplot2)

data(trabalhodeR)

#Utilizando a função "Summary" para fazer um resumo estatistico da base de dados.
summary(trabalhodeR)

#Utilizando a função "nrow" para saber os numeros de linhas
nrow(trabalhodeR)

#Utilizando a função "length" para obter/definir o comprimento da lista
length(trabalhodeR)


##Graficos com linha de tendencia 
#(Dados: x = ExactMolWt, y = MolLogP, NumHAcceptors, NumHDonors, NumRotatableBonds, RingCount, TPSA)

#(Dados: x = ExactMolWt, y = MolLogP (calculo da molecula))
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = MolLogP)) + geom_smooth(mapping = aes(x = ExactMolWt, y = MolLogP))
#Concentracao de moleculas menores em encontro com o ExactMolWt e uma linha situada entre -5 e 10 MolLogP

#(Dados: x = ExactMolWt, y = NumHAcceptors)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHAcceptors)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumHAcceptors))

#(Dados: x = ExactMolWt, y = NumHDonors)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHDonors)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumHDonors))

#(Dados: x = ExactMolWt, y = NumRotatableBonds)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumRotatableBonds)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumRotatableBonds))

#(Dados: x = ExactMolWt, y = RingCount)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = RingCount)) + geom_smooth(mapping = aes(x = ExactMolWt, y = RingCount))

#(Dados: x = ExactMolWt, y = TPSA (espa?o da molecula))
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = TPSA)) + geom_smooth(mapping = aes(x = ExactMolWt, y = TPSA))



##RingCount, NumRotatableBonds
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = NumRotatableBonds, y = RingCount)) + geom_smooth(mapping = aes(x = RingCount, y = NumRotatableBonds))

##NumHDonors, NumHAcceptors
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = NumHAcceptors, y = NumHDonors)) + geom_smooth(mapping = aes(x = NumHAcceptors, y = NumHDonors))



##Fazendo o Boxplot
#Boxplot do ExactMolWt e MolLogP
ggplot(data = trabalhodeR, aes(y = MolLogP, x = ExactMolWt)) + geom_boxplot()

#Boxplot do ExactMolWt e NumHAcceptors
ggplot(data = trabalhodeR, aes(y = NumHAcceptors, x = ExactMolWt)) + geom_boxplot()

#Boxplot do ExactMolWt e NumHDonors
ggplot(data = trabalhodeR, aes(y = NumHDonors, x = ExactMolWt)) + geom_boxplot()

#Boxplot do ExactMolWt e NumRotatableBonds
ggplot(data = trabalhodeR, aes(y = NumRotatableBonds, x = ExactMolWt)) + geom_boxplot()

#Boxplot do ExactMolWt e RingCount
ggplot(data = trabalhodeR, aes(y = RingCount, x = ExactMolWt)) + geom_boxplot()

#Boxplot do ExactMolWt e TPSA
ggplot(data = trabalhodeR, aes(y = TPSA, x = ExactMolWt)) + geom_boxplot()


boxplot(trabalhodeR$ExactMolWt) +
  legend(x = "topleft", legend = "ExactMolWt", bty = "n")



##Quantidade que dados se repetem
table(trabalhodeR$ExactMolWt)

table(trabalhodeR$MolLogP)

table(trabalhodeR$NumHAcceptors)

table(trabalhodeR$NumHDonors)

table(trabalhodeR$NumRotatableBonds)

table(trabalhodeR$RingCount)

table(trabalhodeR$TPSA)

##Histograma
hist(trabalhodeR$ExactMolWt)

hist(trabalhodeR$MolLogP)

hist(trabalhodeR$NumHAcceptors)

hist(trabalhodeR$NumHDonors)

hist(trabalhodeR$NumRotatableBonds)

hist(trabalhodeR$RingCount)

hist(trabalhodeR$TPSA)



cor.test(trabalhodeR$ExactMolWt, trabalhodeR$RingCount)
plot(trabalhodeR$ExactMolWt, trabalhodeR$RingCount)
