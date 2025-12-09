# Load required libraries
library(lime)
library(caret)
library(ggplot2)

# Load and prepare dataset
data(iris)
iris$Species <- as.factor(iris$Species)

# Train a model (Random Forest)
set.seed(123)
model <- train(Species ~ ., data = iris, method = "rf")

# Create explainer using lime
explainer <- lime(iris[, -5], model)

# Select samples to explain
samples <- iris[1:5, -5]

# Generate explanations (choose top label)
explanation <- explain(samples, explainer, n_labels = 1, n_features = 3)

# Visualize explanations
plot_features(explanation)