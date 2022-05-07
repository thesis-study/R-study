# t-검정
# 1. 일표본 단측 t-검정
weights <- runif(10, min=49, max=52)
t.test(weights, mu = 50, alternative = 'greater')
# 2. 일표본 양측 t-검정
weights_ex <- runif(100, min=40, max=100)
t.test(weights_ex, mu = 70, alternative = 'two.sided')

# 이(독립) 표본 t-검정
# 1. 이 표본 단측 t-검정
salaryA <- runif(100, min=250, max=380)
salaryB <- runif(100, min=200, max=400)
t.test(salaryA, salaryB, alternative = 'less')

# 2. 이 표본 양측 t-검정
speedK <- runif(100, min=30, max=40)
speedL <- runif(100, min=25, max=35)
t.test(speedK, speedL, alternative = 'two.sided')
# 0.00000000000000022 == 2.2e-16 >> 0이 16개야 ㅋㅋㅋㅋㅋㅋㅋ

# 일원분산분석
phoneSpeed <- runif(45, min=75, max=100)
telecom <- rep(c('A', 'B', 'C'), 15)
phoneData <- data.frame(phoneSpeed, telecom)

result <- aov(data=phoneData, phoneSpeed ~ telecom)
summary(result)