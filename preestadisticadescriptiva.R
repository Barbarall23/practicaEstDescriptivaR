Sys.which("make")
nuevo_dir <- "c:/preestadisticadescriptiva"
setwd(nuevo_dir)
if(file.exists(nuevo_dir)){cat("Directorio creado correctamente:", nuevo_dir, "\n")
} else {
  cat("Fallo al crear directorio: ", nuevo_dir, "\n")
}

#ejercicio1
vector_x <- c(1, 2, 3, 4, 5)
vector_y <- c(9.1, 2.4, 7.5, 1.3, 3.4)

#Definición: un vector en R recopila una serie de datos. Una lista se diferencia de R porque R contiene vectores de un mismo tipo, mientras que una lista puede contener valores de diferente tipo, siendo más heterogénea. La longitud de ambos vectores es de cinco. Integer son los números enteros (como los del vector x), mientras que double son los números decimales (como los del vector y).

#ejercicio2
vector_x + vector_y
vector_x - vector_y
vector_x * vector_y
vector_x / vector_y
vector_x ^ vector_y

#ejercicio3
vector_y^2

#ejercicio4
vector_y * 10

#ejercicio5
25+vector_y

#ejercicio6
max(vector_y)

#ejercicio7
min(vector_y)

#ejercicio8
abs(9.1)

#ejercicio9
sqrt(vector_y)

#ejercicio10
sum(vector_y)

#ejercicio11
list <- list(c(vector_x, vector_y))
print(list)
typeof(list)
str(list)
View(list)
#La longitud de este nuevo objeto es de 10. En este caso, el tipo de datos que utiliza R para almacenar los valores numéricos es double, es decir, utiliza decimales. El cambio de integer a double es para igualar los valores en decimales, de manera que así no cambia el valor de los números, puesto que, en caso de pasarlo a integer, los números con decimales pasarían a números enteros con lo que ya no tendrían el valor que tenían al principio. 

#ejercicio12
is.na(list)

#ejercicio13
vector_z <- c(29, NA, 12, 46, 73)
is.vector(vector_z)

#ejercicio14
mean(vector_z)
#

#ejercicio15
matriz <- matrix(c(24, 69, 3, 90, 23, 56, 1, 63, 87, 21, 77, 19), 
                 nrow = 4,
                 ncol = 3, 
                 byrow = T)
#Al poner byrow = T, la matriz se rellena por filas. 

#ejercicio16
matriz_filas <- matrix(c(24, 69, 3, 90, 23, 56, 1, 63, 87, 21, 77, 19),
                       nrow =4,
                       ncol = 3,
                       byrow = F)

#ejercicio17
matriz_a <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                   nrow =3,
                   ncol = 3,
                   byrow = F)
matriz_b <- matrix(c(10, 11, 12, 13, 14, 15, 16, 17, 18),
                   nrow = 3,
                   ncol = 3,
                   byrow = F)

#ejercicio18
suma_matriz <- matriz_a +matriz_b
resta_matriz <- matriz_a - matriz_b
#Al restar matrices obtenemos el resultado en negativo porque le hemos restado a la matriz_a la matriz_b, sabiendo que los valores de la matriz_b son mayores que los de la matriz_a.

#ejercicio19
matriz 
matriz_t <- t(matriz)
matriz_t
  
#ejercicio20
matriz*8
  
#ejercicio21
matriz_mult <- matriz_a*matriz_b

#ejercicio22
matriz_mult[2,3]
matriz_mult[2,]
matriz_mult[,3]



#PRÁCTICA EN AULA - practicaEstDescriptivaR
#ejercicio1
set.seed(123)
num_cuentas <- round(rnorm(100, mean = 50, sd = 10))
View(num_cuentas)
print(num_cuentas)

#ejercicio2
mean(num_cuentas)

#ejercicio3
median(num_cuentas)

#ejercicio4
mode <- as.numeric(names(sort(table(num_cuentas), decreasing = TRUE)[1]))
print(paste("La moda de las cuentas en el yacimeinto es:", mode))

#ejercicio5
range(num_cuentas, na.rm = FALSE)

#ejercicio6
percentil_25 <- quantile(num_cuentas, 0.25)
print(paste("El percentil 25 de las cuentas en el yacimiento es:", percentil_25))

#ejercicio7
percentil_75 <- quantile(num_cuentas, 0.75)
print(paste("El percentil 75 de las cuentas en el yacimiento es:", percentil_75))

#ejercicio8
var(num_cuentas)

#ejercicio9
sd(num_cuentas)

#ejercicio10
hist(x = num_cuentas, main = "Histograma", 
xlab = "Número de cuentas", ylab = "Frecuencia")

#ejercicio11
boxplot(x = num_cuentas, main = "Diagrama de caja", 
xlab = "Número de cuentas", ylab = "Yacimiento")

#ejercicio12
hist(num_cuentas, freq = FALSE, main = "Gráfico de densidad",
     ylab = "Densidad")
dx <- density(num_cuentas)
lines(dx, lwd = 2, col = "blue")
plot(dx, lwd = 2, col = "red",
     main = "Densidad")

rug(jitter(num_cuentas))

#ejercicio13
df <- data.frame(num_cuentas)
df$categoria <- cut(df$num_cuentas, breaks = 10)
ggplot(df, aes(x = categoria)) +
  geom_bar(fill = "blue", color = "black") +
  labs(title = "Gráfico de barras de cuentas en el yacimiento", x = "Categoría de cuentas", y = "Frecuencia")

length(ubicación_artefacto)

