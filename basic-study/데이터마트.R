# reshape 패키지
student_number <- c(1, 2, 1, 2)
semester <- c(1, 1, 2, 2) 
math_score <-  c(60, 90, 70, 90)
english_score <- c(80, 70, 40, 60)
score <- data.frame(student_number, semester, math_score, english_score)
score

install.packages("reshape2")
library("reshape2")
melted_score <- melt(score, id=c("student_number", "semester"))

cast(melted_score, student_number ~ variable , mean)

# sqldf 패키지
install.packages("sqldf")
library("sqldf")
sqldf('select * from score')
sqldf('select * from score where student_number = 1')
sqldf('select avg(math_score) as "수학 평균", avg(english_score) as "영어 평균" from score group by student_number') 

# plyr 패키지
# ddply 함수 중요!
class <- c('A', 'A', 'B', 'B')
math <- c(50, 70, 60, 90)
english <- c(70, 80, 60, 80)

ex_score <- data.frame(class, math, english)
ex_score

library("plyr")
ddply(ex_score, "class", summarise, math_avg=mean(math), eng_avg=mean(english))
ddply(ex_score, "class", transform, math_avg=mean(math), eng_avg=mean(english))

year <- c(2012, 2012, 2012, 2012, 2013, 2013, 2013)
month <- c(1, 1, 2, 2, 1, 1, 2)
value <- c(3, 5, 7, 9, 1, 5, 4)
data <- data.frame(year, month, value)
data

ddply(data, c("year", "month"), summarise, value_avg=mean(value))

ddply(data, c("year", "month"), function(x){
  value_avg = mean(x$value)
  value_sd = sd(x$value)
  data.frame(avg_sd = value_avg/value_sd)
})

# data.table 패키지
install.packages("data.table")
library("data.table")

year <- rep(c(2012:2015), each=12000000)
month <- rep(rep(c(1:12), each=1000000), 4)
value <- runif(48000000)

DataFrame <- data.frame(year, month, value)
DataTable <- as.data.table(DataFrame)

system.time(DataFrame)