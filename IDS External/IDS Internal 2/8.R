# Load required libraries
library(arules)
library(arulesViz)

# Sample transactional dataset: Groceries
data("Groceries")

# Inspect dataset
summary(Groceries)

# Mine frequent itemsets using Apriori
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.5, minlen = 2))

# View top rules
inspect(head(rules, 5))

# Visualize rules
plot(rules, method = "graph", engine = "htmlwidget")