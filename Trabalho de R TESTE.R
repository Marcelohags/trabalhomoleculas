library(readr)
trabalhodeR <- read_csv("~/Minhas anotações/Int. a R para Ciência de dados/trabalhodeR.csv")
View(trabalhodeR)


###GrÃ¡ficos da aula
library(ggplot2)

data(trabalhodeR)

summary(trabalhodeR)


##1) 1Âº GrÃ¡fico (Dados: x = ExactMolWt, y = MolLogP, NumHAcceptors, NumHDonors, NumRotatableBonds, RingCount, TPSA)
#(Dados: x = ExactMolWt, y = MolLogP (calculo da molecula))
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = MolLogP))

ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = MolLogP)) + geom_smooth(mapping = aes(x = ExactMolWt, y = MolLogP))

#Concentração de moléculas menores em encontro com o eXCTmOLwt e uma linha situada entre 0.5 e 5 MolLogP

#(Dados: x = ExactMolWt, y = NumHAcceptors)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHAcceptors))

ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHAcceptors)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumHAcceptors))

#(Dados: x = ExactMolWt, y = NumHDonors)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHDonors))

ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumHDonors)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumHDonors))

#(Dados: x = ExactMolWt, y = NumRotatableBonds)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumRotatableBonds))

ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = NumRotatableBonds)) + geom_smooth(mapping = aes(x = ExactMolWt, y = NumRotatableBonds))

#(Dados: x = ExactMolWt, y = RingCount)
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = RingCount))

ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = RingCount)) + geom_smooth(mapping = aes(x = ExactMolWt, y = RingCount))

#(Dados: x = ExactMolWt, y = TPSA (espaço da molecula))
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = TPSA))

ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = ExactMolWt, y = TPSA)) + geom_smooth(mapping = aes(x = ExactMolWt, y = TPSA))



##RingCount, NumRotatableBonds
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = NumRotatableBonds, y = RingCount)) + geom_smooth(mapping = aes(x = RingCount, y = NumRotatableBonds))

##NumHDonors, NumHAcceptors
ggplot(data = trabalhodeR) + geom_point(mapping = aes(x = NumHAcceptors, y = NumHDonors)) + geom_smooth(mapping = aes(x = NumHAcceptors, y = NumHDonors))



##BOXplot
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







