numbers <- scan("input.txt") 
s <- sum(numbers) 
m <- mean(numbers) 
results <- c(s, m) 
write(results, file = "output.txt") 

x <- c(1,2,3,4,5)
y <- c(2,4,6,3,1)

plot(x, y, xlab="X-axis", ylab="Y-axis", main="Scatter Plot")

