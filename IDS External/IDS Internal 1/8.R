library(reshape2)
data("airquality")
m <- melt(airquality, id=c("Month","Day"))                 # melt
c <- dcast(m, Month ~ variable, mean, na.rm=TRUE)          # cast with mean

print(c)

# Example vector
x <- c(5, 6, 7, 8, 9)
y <- c(6, 7, 8, 9, 10)

# Perform t-test
t_result <- t.test(x, y)

# Extract p-value

t_result$p.value
