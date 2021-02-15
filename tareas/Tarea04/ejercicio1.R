x = 1
break_p <- FALSE

while(!break_p){
  if(3^x %% 47 == 28){
    break_p <- TRUE
    print(x)
  }else{
    x <- x + 1 
  }
}

y = 1
break_p <- FALSE

while(!break_p){
  if(3^y %% 47 == 17){
    break_p <- TRUE
    print(y)
  }else{
    y <- y + 1 
  }
}




library(binaryLogic)

num <- 29
mod <- 35
base <- 17

construir_vector_base <- function(bin, mod, base){
  residuo <- c()
  
  inicial <- base^1 %% mod
  residuo <- c(inicial)
  
  for(i in 2:length(bin)){
    num_ant <- (residuo[length(residuo)])
    residuo <- c(residuo, (num_ant*num_ant) %% mod)
  }
  return(residuo)
}

obtener_residuo <- function(tmp, mod, base){
  
  bin <- rev(as.binary(tmp))
  residuos <- construir_vector_base(bin, mod, base)  
  vec_nums <- as.numeric(as.character(bin)) * residuos
  prod(vec_nums[vec_nums>0]) %% mod
  
}

bin 
residuos
vec_nums
prod(vec_nums[vec_nums>0])
obtener_residuo(29, 35, 17)



