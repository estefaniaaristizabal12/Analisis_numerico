# Sub matriz triangular

numeros = c(2,3,5,10,20,30,40,50,60,70)

matriz_triangular <- function (numeros) {
  
  total <- c()
  
  for (i in numeros) {
    
    matriz_triangular = matrix (1 , ncol = i, nrow = i)
    aux = 0
    
    for (j in 1:i) {
      for (k in 1:j) {
        
        aux = aux + matriz_triangular[j,k]
      }   
    }
    
    total = c(total , aux)
    aux = 0
  }
  
  return (total)
}

grafica = matriz_triangular (numeros)

plot (numeros , grafica , type = 'b',col = 1)

