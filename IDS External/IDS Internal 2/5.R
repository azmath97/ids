# Load required libraries
library(dplyr)
library(data.table)
library(reshape2)
library(tidyr)
library(ggplot2)

# Sample dataset: mtcars
data <- as.data.table(mtcars)
data$model <- rownames(mtcars)

# Data Manipulation using dplyr
summary_tbl <- data %>%
  group_by(cyl) %>%
  summarise(avg_mpg = mean(mpg), avg_hp = mean(hp))

print("Summary by cylinder:")
print(summary_tbl)

# Reshape using reshape2
melted_data <- melt(data, id.vars = "model", measure.vars = c("mpg", "hp"))
print("Melted data:")
print(head(melted_data))

# Tidying with tidyr
wide_data <- pivot_wider(melted_data, names_from = variable, values_from = value)
print("Wide format data:")
print(head(wide_data))

# Visualization using ggplot2
ggplot(data, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
  geom_boxplot() +
  labs(title = "MPG Distribution by Cylinder Count", x = "Cylinders", y = "Miles per Gallon") +
  theme_minimal()