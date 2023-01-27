pkgs <- c("tidyverse", "palmerpenguins", "nycflights13", 
             "gapminder", "janitor", "styler", "babynames", 
             "usethis", "reprex", "ggridges", "hexbin", 
             "ggrepel", "arrow", "patchwork")
for (x in pkgs){
    #install.packages(x)
    library(x, character.only = TRUE)
}
#deck <- read.csv("R4DS/deck.csv")
rscripts <- Sys.glob("R4DS/*.R")
sapply(rscripts, source)
