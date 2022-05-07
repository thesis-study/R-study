for(i in 1:3){
  print(i)
}

data <- c("a", "b", "c")
for(i in data)
  print(i)

i <- 0
while(i < 5){
  print(i)
  i <- i+1
}

number <- 5
if(number < 5){
  print('number 5보다 작다')
}else if(number > 5){
  print('number 5보다 크다')
}else{
  print('number는 5!!!')
}
