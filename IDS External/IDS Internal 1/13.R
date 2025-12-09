library(dplyr)

iris %>% 
  select(Sepal.Length, Species)

iris %>% 
  filter(Sepal.Length > 6)

iris %>% 
  group_by(Species) %>% 
  summarise(avg_petal_len = mean(Petal.Length))


iris$Sepal.Length   # Access the Sepal.Length column
iris[, 1]   # First column (Sepal.Length)
iris[1, 2]   # Row 1, Column 2
iris[1:5, c("Sepal.Length", "Species")]   # First 5 rows, specific columns
iris %>% select(Sepal.Length, Species)
