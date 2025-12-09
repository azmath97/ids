# Given vectors
A <- c(1, 2, 3, 4, 5)
B <- c(4, 5, 6, 7, 8)

# Union
union_result <- union(A, B)
print(union_result)

# Intersection
intersection_result <- intersect(A, B)
print(intersection_result)

# Set Difference (A - B)
difference_result <- setdiff(A, B)
print(difference_result)

# Viva:
# Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Score = c(88.5, 92.0, 79.5)
)

print(df)