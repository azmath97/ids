analyze_text <- function(txt) {
  # Split into words
  words <- unlist(strsplit(txt, " "))
  
  list(
    longest = words[which.max(nchar(words))],
    vowels  = words[grep("^[aeiouAEIOU]", words)]
  )
}

# Usage
analyze_text(c("This is an apple", "Data science is fun"))