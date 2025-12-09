library(readxl)

data_sheet <- read_excel("C:/Users/Abhi/Downloads/data_file.xls", sheet = "Sheet1")

df <- as.data.frame(data_sheet)

write.csv(df, "C:/Users/Abhi/Downloads/output.csv", row.names = FALSE)
