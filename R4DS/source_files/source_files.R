#deck <- read.csv("R4DS/deck.csv")
rscripts <- Sys.glob("R4DS/*.R")
sapply(rscripts, source)