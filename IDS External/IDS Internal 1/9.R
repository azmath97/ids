# install.packages("ggplot2")
library(ggplot2)


ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.5, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Sepal.Length", x = "Sepal Length", y = "Count") +
  theme_minimal()


ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "MPG vs HP with Regression Line", x = "Horsepower", y = "Miles per Gallon") +
  theme_minimal()

# Plot
ggplot(iris, aes(Species, Sepal.Width, fill = Species)) +
  geom_bar(stat = "summary", fun = "mean") +
  labs(title = "Average Sepal.Width by Species", x = "Species", y = "Average Sepal Width") +
  theme_minimal()

# Base R histogram
hist(iris$Sepal.Length,
     main = "Histogram of Sepal.Length",
     xlab = "Sepal Length",
     col = "lightblue",
     border = "black")
