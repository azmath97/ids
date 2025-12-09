library(data.table)

dt <- as.data.table(mtcars)

dt[mpg > 25]                                # filter
dt[, mean(hp), by = cyl]                    # mean hp by cylinders

