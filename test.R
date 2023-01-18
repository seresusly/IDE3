test <- function(start_with) {
  cash <- start_with
  n <- 0
  while (cash > 0) {
    cash <- cash - 1 + play()
    n <- n + 1
    if(cash>start_with){
      break
    }
  }
  if(cash>0){
    TRUE
  }else{
    FALSE
  }
}