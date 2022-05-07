m1 <- matrix(c(1:10), nrow = 2)
m1
m2 <- matrix(c(1:11), nrow = 2)
m2

a1 <- array(c(1:12), dim=c(2, 3, 2))
a1
a2 <- c(1:12)
a2
dim(a2) <- c(2, 3, 2)
a2

L <- list()
L[[1]] <- 5
L[[2]] <- c(1:6)
L[[3]] <- matrix(c(1:6), nrow=2)
L[[4]] <- array(c(1:12), dim=c(2, 3, 2))
L

v1 <- c(1, 2, 3)
v2 <- c('a', 'b', 'c')
df1 <- data.frame(v1, v2)
df1
