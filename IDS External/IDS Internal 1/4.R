# Two string vectors
vec1 <- c("Apple", "Banana")
vec2 <- c("Mango", "Orange")

# Concatenate into one vector
combined <- c(vec1, vec2)

print(combined)



# Create a matrix
mat <- matrix(1:9, nrow = 3)

# Apply sum to each row
row_sums <- apply(mat, 1, sum)

# Apply mean to each column
col_means <- apply(mat, 2, mean)
