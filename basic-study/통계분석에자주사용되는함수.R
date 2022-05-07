data <- 'This is a pen'
tolower(data)
toupper(data)
nchar(data)
grepl('pen', data)
gsub('pen', 'hyunho', data)

x <- c(1:12)
head(x, 5)
tail(x, 4)
quantile(x)

df1 <- data.frame(x=c(1, 1, 1, 2, 2), y=c(2, 3, 4, 3, 3))
df2 <- data.frame(x=c(1,2,3,4), z=c(5,6,7,8))
subset(df1, x==1)

merge(df1, df2, by=c('x'))
df1
apply(df1, 1, sum)
apply(df1, 2, sum)

Sys.Date()
Sys.time()

# 산점도
x <- c(1:10)
y <- rnorm(10)

plot(x, y, type='l', xlim=c(-2, 12), ylim=c(-3, 3), xlab='X axis', ylab='Y axis', main='Test plot')
plot(x, y, type='p', xlim=c(-2, 12), ylim=c(-3,3), xlab="X axis", ylab='Y axis', main='Test plot')

abline(v=c(1, 10), col='blue')
