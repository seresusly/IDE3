wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
combos <- expand.grid(wheel,wheel,wheel, stringsAsFactors = FALSE)
probslots <- c("DD" = 0.03, "7" = 0.03, "BBB" = 0.06, 
          "BB" = 0.1, "B" = 0.25, "C" = 0.01, "0" = 0.52)
combos$prob1 <- probslots[combos$Var1]
combos$prob2 <- probslots[combos$Var2]
combos$prob3 <- probslots[combos$Var3]
combos$prob <- combos$prob1 * combos$prob2 * combos$prob3
#sum(combos$prob)
combos$prize <- NA
for (i in 1:nrow(combos)) {
  symbols_combos <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols_combos)
}
#sum(combos$prize * combos$prob)