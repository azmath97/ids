library(caret)
library(ggplot2)

set.seed(123)

############################
### 1️⃣ LINEAR REGRESSION ###
############################

data(iris)
lin_data <- iris[, 1:4]

# Split
idx <- createDataPartition(lin_data$Sepal.Length, p = 0.8, list = FALSE)
train <- lin_data[idx, ]
test  <- lin_data[-idx, ]

# Model
lm_model <- train(Sepal.Length ~ ., data = train, method = "lm")
lm_pred  <- predict(lm_model, test)

# Plot: Actual vs Predicted
ggplot(data.frame(A = test$Sepal.Length, P = lm_pred), aes(A, P)) +
  geom_point() +
  geom_abline() +
  ggtitle("Linear Regression: Actual vs Predicted")


################################
### 2️⃣ LOGISTIC REGRESSION ###
################################

# Convert iris to binary classification
log_data <- subset(iris, Species != "setosa")
log_data$Species <- factor(log_data$Species)

# Split
idx2 <- createDataPartition(log_data$Species, p = 0.8, list = FALSE)
train2 <- log_data[idx2, ]
test2  <- log_data[-idx2, ]

# Logistic model
log_model <- train(Species ~ ., data = train2, method = "glm", family = "binomial")
log_pred  <- predict(log_model, test2)

# Confusion matrix
cm <- confusionMatrix(log_pred, test2$Species)
cm_df <- as.data.frame(cm$table)

# Plot: Confusion Matrix
ggplot(cm_df, aes(Reference, Prediction, fill = Freq)) +
  geom_tile() +
  geom_text(aes(label = Freq), color = "white") +
  scale_fill_gradient(low = "lightblue", high = "blue") +
  ggtitle("Logistic Regression Confusion Matrix")
