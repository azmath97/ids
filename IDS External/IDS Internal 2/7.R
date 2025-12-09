# Load required libraries
library(caret)
library(ggplot2)

### LINEAR REGRESSION: Predict 'mpg' from 'hp' and 'wt' in mtcars
data("mtcars")
set.seed(123)
lm_model <- train(mpg ~ hp + wt, data = mtcars, method = "lm")
lm_pred <- predict(lm_model, mtcars)

# Visualize predictions vs actual
ggplot(mtcars, aes(x = mpg, y = lm_pred)) +
  geom_point(color = "blue") +
  geom_abline(slope = 1, intercept = 0, linetype = "dashed", color = "red") +
  labs(title = "Linear Regression: Actual vs Predicted MPG", x = "Actual MPG", y = "Predicted MPG") +
  theme_minimal()

### LOGISTIC REGRESSION: Predict Species (setosa vs others) in iris
data("iris")
iris$binary_species <- ifelse(iris$Species == "setosa", "setosa", "other")
iris$binary_species <- as.factor(iris$binary_species)

set.seed(123)
log_model <- train(binary_species ~ Sepal.Length + Petal.Length, data = iris, method = "glm", family = "binomial")
log_pred <- predict(log_model, iris)

# Confusion matrix
conf_mat <- confusionMatrix(log_pred, iris$binary_species)
print("Confusion Matrix:")
print(conf_mat)