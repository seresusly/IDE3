deck <- read.csv("deck.csv")
rscripts <- Sys.glob("*.R")
sapply(rscripts, source)