data(iris)

iris <- unique(iris)                         # remove duplicates
iris$Species <- as.numeric(iris$Species)     # encode factor → numeric
set.seed(123)
test_idx <- sample(1:nrow(iris), 0.2*nrow(iris))  # 20% test
test <- iris[test_idx, ]
train <- iris[-test_idx, ]
