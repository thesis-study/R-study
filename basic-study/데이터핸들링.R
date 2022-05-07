m1 <- matrix(c(1:6), nrow = 2)
colnames(m1) <- c('c1', 'c2', 'c3')
rownames(m1) <- c('r1', 'r2')
m1

colnames(m1)
rownames(m1)

df1 <- data.frame(x = c(1, 2, 3), y= c(4, 5, 6))
colnames(df1) <- c('c1', 'c2')
rownames(df1) <- c('r1', 'r2', 'r3')

df1

v1 <- c(1:6)
v2 <- c(7:12)
df1 <- data.frame(v1, v2)
df1$v1
df1$v2

rbind(v1, v2)
cbind(v1, v2)
