# This is how we import a package in R:
library(MASS)

# If the package is not installed to your computer then you can download it by:
# install.packages('packagename')

data(Animals)
View(Animals)

lr = lm(brain ~ body, data = Animals)
summary(lr)

#Let's import another dataset
data(Boston)
View(Boston)

lr2 = lm(crim ~ ., data = Boston)
summary(lr2)

data("Rabbit")
View(Rabbit)
cor(Rabbit$BPchange, Rabbit$Dose)

plot(Rabbit$BPchange, Rabbit$Dose)
abline(lm(Dose~BPchange, data = Rabbit), col = 'red')

mv = read.csv('https://itueconomics.github.io/bil113e/assets/movies_new.csv')
View(mv)
barplot(colSums(mv[,5:23] == 'True'), las=2)

logitfit <- glm(Action ~ . , data = mv[,5:23], family = 'binomial')
summary(logitfit)
sum(round(predict(logitfit, type = 'response')) == (mv$Action == 'True')) / length(mv$Action)


titanic <- read.csv('https://itueconomics.github.io/bil113e/assets/titanic/train.csv')
logitfit2 <- glm(Survived ~ as.factor(Pclass)+ 
                   Sex + Age + SibSp + Parch + Fare + 
                   is.na(Cabin) + Embarked, 
                 data = titanic, 
                 family = 'binomial')
summary(logitfit2)
sum(logitfit2$y == round(logitfit2$fitted.values)) / length(logitfit2$y)
