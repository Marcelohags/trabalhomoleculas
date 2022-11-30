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


###Graficos com linha de tendencia 
##(Dados: x = ExactMolWt, y = MolLogP, NumHAcceptors, NumHDonors, NumRotatableBonds, RingCount, TPSA)

#(Dados: x = ExactMolWt, y = MolLogP (calculo da molecula))
ExactMolWt_MolLogP <- ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = MolLogP)) + geom_smooth(mapping = aes(x = ExactMolWt, y = MolLogP))
#Concentracao de moleculas menores em encontro com o ExactMolWt e uma linha situada entre -5 e 10 MolLogP

#(Dados: x = ExactMolWt, y = NumHAcceptors)
ExactMolWt_NumHAcceptors <- ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHAcceptors)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumHAcceptors))

#(Dados: x = ExactMolWt, y = NumHDonors)
ExactMolWt_NumHDonors <- ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHDonors)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumHDonors))

#(Dados: x = ExactMolWt, y = NumRotatableBonds)
ExactMolWt_NumRotatableBonds <- ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumRotatableBonds)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumRotatableBonds))

#(Dados: x = ExactMolWt, y = RingCount)
ExactMolWt_RingCount <- ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = RingCount)) + geom_smooth(mapping = aes(x = ExactMolWt, y = RingCount))

#(Dados: x = ExactMolWt, y = TPSA (espaco da molecula))
ExactMolWt_TPSA <-  ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = TPSA)) + geom_smooth(mapping = aes(x = ExactMolWt, y = TPSA))


##RingCount, NumRotatableBonds (para cruzar os dados de ligaçoes com aneis e sem aneis)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = NumRotatableBonds, y = RingCount)) + geom_smooth(mapping = aes(x = RingCount, y = NumRotatableBonds))

##NumHDonors, NumHAcceptors (para cruzar os dados de Ligaçoes com hidrogenio e sem ligaçao de hidrogenio)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = NumHAcceptors, y = NumHDonors)) + geom_smooth(mapping = aes(x = NumHAcceptors, y = NumHDonors))

##ExactMolWt, TPSA (para cruzar os dados de peso molecular e o espaço da molecula)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = TPSA)) + geom_smooth(mapping = aes(x = ExactMolWt, y = TPSA))


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


##Histograma
hist(trabalhodeR$ExactMolWt)

hist(trabalhodeR$MolLogP)

hist(trabalhodeR$NumHAcceptors)

hist(trabalhodeR$NumHDonors)

hist(trabalhodeR$NumRotatableBonds)

hist(trabalhodeR$RingCount)

hist(trabalhodeR$TPSA)


#Valor maximo
max(trabalhodeR$ExactMolWt)

max(trabalhodeR$MolLogP)

max(trabalhodeR$NumHAcceptors)

max(trabalhodeR$NumHDonors)

max(trabalhodeR$NumRotatableBonds)

max(trabalhodeR$RingCount)

max(trabalhodeR$TPSA)

#Valor minino
min(trabalhodeR$ExactMolWt)

min(trabalhodeR$MolLogP)

min(trabalhodeR$NumHAcceptors)

min(trabalhodeR$NumHDonors)

min(trabalhodeR$NumRotatableBonds)

min(trabalhodeR$RingCount)

min(trabalhodeR$TPSA)

#Media
mean(trabalhodeR$ExactMolWt)

mean(trabalhodeR$MolLogP)

mean(trabalhodeR$NumHAcceptors)

mean(trabalhodeR$NumHDonors)

mean(trabalhodeR$NumRotatableBonds)

mean(trabalhodeR$RingCount)

mean(trabalhodeR$TPSA)


