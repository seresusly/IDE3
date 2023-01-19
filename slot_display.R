slot_display <- function(prize){
  symbols <- attr(prize,"symbols")
  symbols <- paste(symbols, collapse = " ")
  string <- paste(symbols, prize, sep="\n$")
  cat(string)
}