library(ggplot2)

# Histogram - iris
data("iris")
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.5)

# Scatter plot with regression line - mtcars
data("mtcars")
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm")

# Bar plot of mean Sepal.Width by Species - iris
ggplot(iris, aes(x = Species, y = Sepal.Width)) +
  stat_summary(fun = mean, geom = "bar")

