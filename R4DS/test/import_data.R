library(tidyverse)
library(readxl)
data <- read_excel("/Users/carlos/Documents/og data.xlsx",
                   col_types = c("text", "text", "text", "text", "text", "text",
                                 "text", "text", "numeric", "numeric", "numeric",
                                 "text", "logical", "text", "numeric", "numeric",
                                 "logical", "logical", "text", "text", "text",
                                 "numeric", "numeric"))