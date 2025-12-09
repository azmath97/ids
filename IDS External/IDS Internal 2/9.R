# Install & load required packages (run once)
# install.packages(c("tm", "SnowballC", "syuzhet", "wordcloud", "RColorBrewer"))

library(tm)
library(SnowballC)
library(syuzhet)
library(wordcloud)
library(RColorBrewer)

# Step 1: Input text data
text_data <- c(
  "I love this product! It works wonderfully.",
  "This is the worst experience I've ever had.",
  "Not bad, could be better.",
  "Absolutely fantastic! Highly recommend it.",
  "I am very disappointed with the service."
)

# Step 2: Create and preprocess corpus
corpus <- Corpus(VectorSource(text_data))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stemDocument)

# Step 3: Text mining – term-document matrix & word cloud
tdm <- TermDocumentMatrix(corpus)
word_freqs <- sort(rowSums(as.matrix(tdm)), decreasing = TRUE)
wordcloud(names(word_freqs), word_freqs, max.words = 80, colors = brewer.pal(8, "Dark2"))

# Step 4: Sentiment analysis
sentiments <- get_nrc_sentiment(text_data)
sentiment_scores <- colSums(sentiments)

# Step 5: Visualization & output
barplot(sentiment_scores, las = 2, col = rainbow(10),
        main = "Sentiment Distribution", ylab = "Frequency")
print(sentiment_scores)