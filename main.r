# Cambiar por tu funcion
f <- function(x) {cos(x*x)}

# Obtener n
n <- readline("Ingrese la cantidad de puntos a considerar (min 1, max 5) ")

while(n < 1 || n > 5)
  n <- readline("La cantidad de puntos debe estar entre 1 y 5, intente nuevamente ")


result <- switch(n, 
            "1" = {2*f(0)},
            "2" = {f(sqrt(1/3)) + f(-sqrt(1/3))},
            "3" = {(8/9)*f(0) + (5/9)*f(sqrt(3/5)) + (5/9)*f(-sqrt(3/5))},
            "4" = {
                    ((18+sqrt(30))/36) * f(sqrt((3-2*sqrt(6/5))/7)) + 
                    ((18+sqrt(30))/36) * f(-sqrt((3-2*sqrt(6/5))/7)) + 
                    ((18-sqrt(30))/36) * f(sqrt((3+2*sqrt(6/5))/7)) + 
                    ((18-sqrt(30))/36) * f(-sqrt((3+2*sqrt(6/5))/7))
                  },
            "5" = {
                    (128/225) * f(0) + 
                    ((322+13*sqrt(70))/900) * f((1/3)*sqrt(5-2*sqrt(10/7))) + 
                    ((322+13*sqrt(70))/900) * f(-(1/3)*sqrt(5-2*sqrt(10/7))) + 
                    ((322-13*sqrt(70))/900) * f((1/3)*sqrt(5+2*sqrt(10/7))) + 
                    ((322-13*sqrt(70))/900) * f(-(1/3)*sqrt(5+2*sqrt(10/7)))
                  }
          )

print(paste("Resultado", result))