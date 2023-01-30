# pkgs <- c("tidyverse", "palmerpenguins", "nycflights13", 
#              "gapminder", "janitor", "styler", "babynames", 
#              "usethis", "reprex", "ggridges", "hexbin", 
#              "ggrepel", "arrow", "patchwork", "slider", "glue", 
#              "stringr","forcats")
# for (x in pkgs){
#     install.packages(x)
#     library(x, character.only = TRUE)
# }
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
library(slider)
library(glue)
library(stringr)
library(forcats)
library(hms)
#deck <- read.csv("R4DS/deck.csv")
rscripts <- Sys.glob("R4DS/*.R")
sapply(rscripts, source)
