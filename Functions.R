artery_count <- function(test_string) {
  
  w <- 0
  x <- 0
  y <- 0
  z <- 0
  

  for (i in 1:nrow(Table_Full)){
    if (grepl(test_string, Table_Full$LOKALISATION[i])){
      if (Table_Full$HIGHEST_GROUP[i] == 1){
        w <- w + 1
      } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
        x <- x + 1
      } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
        y <- y + 1
      } else {z <- z + 1}
    }
  }
  
  
  a <- round(w / nrow(Table_Full)*100, digits = 2)
  b <- round(x / nrow(Table_Full)*100, digits = 2)
  c <- round(y / nrow(Table_Full)*100, digits = 2)
  d <- round(z / nrow(Table_Full)*100, digits = 2)
  
  v <<- data.frame(c(w,x,y,z,a,b,c,d))
  
}




number_of_interventions <- function(Intervention_Type) {

  w <- 0
  x <- 0
  y <- 0
  z <- 0
  
  for (i in 1:nrow(Table_Full)) {
    if (Table_Full$Intervention_Type[i] == 1) {
      if (Table_Full$HIGHEST_GROUP[i] == 1) {
        w <- w + 1
      } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
        x <- x + 1
      } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
        y <- y + 1
      } else {z <- z + 1}
    } else 
  }
}


