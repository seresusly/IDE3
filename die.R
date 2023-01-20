die <- c(1, 2, 3, 4, 5, 6)
rolls <- expand.grid(die, die)
rolls$value <- rolls$Var1 + rolls$Var2
probdice <- c("1" = 1/8, "2" = 1/8, "3" = 1/8, "4" = 1/8, "5" = 1/8, "6" = 3/8)
rolls$prob1 <- probdice[rolls$Var1]
rolls$prob2 <- probdice[rolls$Var2]
rolls$prob <- rolls$prob1 * rolls$prob2
#sum(rolls$value * rolls$prob)