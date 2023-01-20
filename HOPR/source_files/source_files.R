deck <- read.csv("HOPR/deck.csv")
rscripts <- Sys.glob("HOPR/*.R")
sapply(rscripts, source)