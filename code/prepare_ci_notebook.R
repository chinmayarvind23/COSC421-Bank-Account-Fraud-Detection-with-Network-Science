input <- "code.qmd"
output <- "code-ci.qmd"

text <- paste(readLines(input, warn = FALSE, encoding = "UTF-8"), collapse = "\n")

safe_setup <- paste0(
  "```{r}\n",
  "library(tidyverse)\n",
  "library(visNetwork)\n",
  "library(igraph)\n",
  "library(readr)\n",
  "library(dplyr)\n",
  "library(httr)\n",
  "library(dotenv)\n",
  "library(purrr)\n",
  "library(ggplot2)\n",
  "library(ggfortify)\n",
  "```"
)

# Replace the original environment-mutating setup chunk with a deterministic,
# read-only library setup suitable for CI.
text <- sub("(?s)```\\{r\\}\\n.*?```", safe_setup, text, perl = TRUE)

# Remove any remaining package installation calls from later notebook chunks.
text <- gsub("(?m)^\\s*install\\.packages\\([^\\n]*\\)\\s*$", "", text, perl = TRUE)

# Use the repository-provided dataset instead of a developer-machine path.
text <- gsub(
  'read_csv\\("/Users/chinmayarvind/Documents/UBC/UBC Coursework/COSC 421/Course Project/Bank-Account-Fraud-Detection-with-Network-Science/data/Base.csv"\\)',
  'read_csv("../data/Base.csv")',
  text,
  perl = TRUE
)

# Make the generated CI document publish as the Pages root.
text <- sub("output-file: index.html", "output-file: index.html", text, fixed = TRUE)

writeLines(text, output, useBytes = TRUE)
cat("Prepared", output, "for CI rendering\n")
