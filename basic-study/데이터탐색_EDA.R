head(iris, 3)
tail(iris, 10)

summary(iris)
str(iris)

# 1. 결측값

copy_iris <- iris
copy_iris[ sample(1:150, 30), 1] <- NA
install.packages("Amelia")
library("Amelia")
missmap(copy_iris)

dim(copy_iris)
# 단순 대치법
copy_iris <- copy_iris[complete.cases(copy_iris), ]
dim(copy_iris)

# 평균 대치법
meanValue <- mean(copy_iris$Sepal.Length, na.rm=T)
meanValue

install.packages("DMwR2")
library("DMwR2")
copy_iris <- centralImputation(copy_iris)

# 2. 이상값 판단
data1 <- c(3, 10, 13, 16, 11, 20, 17, 25, 43)
boxplot(data1, horizontal = T)