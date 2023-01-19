test3 <- function(start_with) {
  cash <- start_with
  n <- 0
  while (start_with > 0) {
    cash <- cash - 1 + play()
    n <- n + 1
    if(cash>start_with){
      break
    }
    else if(cash<start_with){
      break
    }
  }
  cash-start_with
}

#(1000000+sum(replicate(1000000,test3(1))))/1000000*100
#^ percentage money left after x plays