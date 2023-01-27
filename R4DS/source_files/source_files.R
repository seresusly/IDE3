pkgs <- c("tidyverse", "palmerpenguins", "nycflights13", 
             "gapminder", "janitor", "styler", "babynames", 
             "usethis", "reprex", "ggridges", "hexbin", 
             "ggrepel", "arrow", "patchwork")
library(tidyverse)
library(palmerpenguins)
library(nycflights13)
library(gapminder)
library(janitor)
library(styler)
library(babynames)
library(usethis)
library(reprex)
library(ggridges)
library(hexbin)
library(ggrepel)
library(arrow)
library(patchwork)
# for (x in pkgs){
#     library(x, character.only = TRUE)
# }
#deck <- read.csv("R4DS/deck.csv")
rscripts <- Sys.glob("R4DS/*.R")
sapply(rscripts, source)
