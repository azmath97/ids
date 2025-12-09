numbers <- scan("C:/Users/Abhi/Downloads/input_numbers.txt")

total_sum <- sum(numbers)
total_mean <- mean(numbers)

results <- c(paste("Sum =", total_sum), paste("Mean =", total_mean))

writeLines(results, "C:/Users/Abhi/Downloads/output_results.txt")

x <- c(1,2,3,4,5)
y <- c(2,4,6,3,1)

plot(x, y, xlab="X-axis", ylab="Y-axis", main="Scatter Plot")
