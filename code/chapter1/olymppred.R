
#Load Olympic data and fit linear model
data <- read.csv("../../data/olympic100m.txt", header=FALSE)
x <- data$V1 # Olympic years
t <- data$V2 # Winning times
xbar  <- mean(x)
tbar  <- mean(t)
xxbar <- mean(x * x)
xtbar <- mean(x * t)
w1 = (tbar*xbar - xtbar)/(xbar*xbar - xxbar)
w0 = tbar-w1*xbar

plot(data.frame(x, t))



