#===============================================================================
# Redacción de artículos académicos con R
# 02. Estructuras y primeras operaciones
# Estudiante: César Francisco Chiriboga Arroyo
#===============================================================================

# Clase 2:Estructuras y primeras operaciones ------------------------------


# Manipulacion de un vector -----------------------------------------------

# Ejercicio 1:
# 1. Crear un vector (cualquiera) de 5 elementos  

vector <- c(100,282,2,1,0)

# 2. Extraer elemento de la posición 1

vector[1]

# 3. Extraer elementos de la posición 3 y 5

#Posición 3
vector[3]

#Posición 5

vector[5]

# R como calculadora ------------------------------------------------------

# Ejercicio 2:
# 1.Crear 2 vectores numéricos con 60 elementos usando la función sample

a <- 1:100
a
vector1 <- sample(x = a, size = 60,replace = TRUE)
vector1
length(vector1)

b <- 100:1000

vector2 <- sample(x = b, size = 60,replace = TRUE)
vector2
length(vector2)

# 2. Sumar los dos vectores

vector_sum <- vector1 + vector2
vector_sum

# 3. Restar los dos vectores

vector_res <- vector1 - vector2
vector_res

# 4. Multiplicar los dos vectores

#Multiplicación de elementos

vector_mult <- vector1 * vector2
vector_mult

#Producto escalar


vect_prod_esc <- vector1%*%vector2
vect_prod_esc

# 5. Dividir los dos vectores

vector_div <- vector1 / vector2
vector_div

# Operaciones estadísticas básicas ----------------------------------------

# Ejercicio 3:
# 1. Sumas los elementos de cada vector (usar los vectores creados en el ejercicio 2)

vect1_sum <- sum(vector1)
vect1_sum 

vect2_sum <- sum(vector2)
vect2_sum 

# 2. Obtener el valor máximo de cada vector

max_vect1 <- max(vector1)
max_vect1

max_vect2 <- max(vector2)
max_vect2

# 2. Obtener el percentil 45 de cada vector

percentil45_vect1 <- quantile(vector1, 0.45)
percentil45_vect1 

percentil45_vect1 <- quantile(vector1, 0.45)
percentil45_vect1 

# Operadores lógicos ------------------------------------------------------

# Ejercicio 4:
# 1. Filtrar el primer vector para aquellos elementos superiores o iguales
# a la mediana, usando el operador lógico: >=

median(vector1)
filtro1 <- vector1[vector1 >= median(vector1)]
filtro1

# 2. Filtrar el segundo vector para aquellos elementos  usando dos operadores lógicos: < 
# Los elementos que estan entre el quartil 25 y 75

vector2

quantile(vector2,0.25)# 300.25
quantile(vector2,0.75)# 713.5

filtro2 <- vector2[which(vector2 > quantile(vector2,0.25) &
                         vector2 < quantile(vector2,0.75))]
filtro2

# Fechas ------------------------------------------------------------------

# Ejercicio 5:
# 1. Crear un vector con fechas

fecha <- c("12-04-2021")

# 2. Obtener la clase del vector creado

class(fecha)

# 3. Convertir el vector a fecha

fecha_conv <- as.Date(fecha, format = "%d-%m-%Y")
fecha_conv

# 4. Obtener los atributos del vector final

attributes(fecha_conv)


## Horas------------------------------------------------------------------------

# Ejercicio 6:

# Obtener la hora actual con el uso horario de europa, Paris

now_ct <-Sys.time()
now_ct

fecha_hora_pr <- structure(now_ct, tzone = "Europe/Paris")
fecha_hora_pr

# Obtener la hora actual con el uso horario de America, New_York

now_ct2 <-Sys.time()
now_ct2

fecha_hora_ny <- structure(now_ct2, tzone = "America/New_York")
fecha_hora_ny

# Crear muestras aleatorias -----------------------------------------------

# Ejercicio 7

# 1. Crear un vector aleatorio de tipo caracter, de tamaño 100 y graficar

set.seed(1)
vect_char <- sample(c("Masculino","Femenino"), size = 100, replace = TRUE)
vect_char
class(vect_char)


# 2. Transformar a factor

fact_vect_char <- factor(vect_char)
fact_vect_char
class(fact_vect_char)


plot(fact_vect_char)

# 3. Crear un vector aleatorio de tipo numérico, de tamaño 100

set.seed(1)
vect_char <- sample(c("Masculino","Femenino"), size = 100, replace = TRUE)

vect_num <- sample(1:3000, size = 100, replace = TRUE)
vect_num
class(vect_num)

# 4. Transformar a factor

factor(vect_num)


# Listas ------------------------------------------------------------------

# Ejercicio 8
# 1. Crear una lista con un elemento: caracter, entero, lógico y numérico

lista <- list(a = sample(c("Femenino","Masculino", "Otro"), size = 15, replace = TRUE), b = sample(1:100, size = 20, replace = TRUE),
              c = sample(c(TRUE, FALSE), size = 20, replace = TRUE), d = as.numeric(sample(1:200, size = 15)))

class(lista)


# 2. Mostrar los elementos de esa lista

str(lista)

# 3- Extraer los elementos de la lista

#Primer elemento de la lista

lista$a

#Segundo elemento de la lista

lista$b

#Tercer elemento de la lista

lista$c

#Cuarto elemento de la lista

lista$d

# 4. Extraer un elemento de la lista pero, como lista

#Extraer del primer componente, el cuarto elemento

lista[[1]][4]

#Extraer del segundo componente, el quinceavo elemetno

lista[[2]][15]

# Tablas o data.frames ----------------------------------------------------

# Ejercicio 9: usar el data frame mtcars 

library(tidyverse)

# 1. Ver la clase del data frame

class(mtcars)

# 2. Ver los atributos del data frame

attributes(mtcars)

# 3. Ver la dimensión

dim(mtcars)

# 4. Extraer de la tercera fila de la tabla:

View(mtcars)

mtcars[3,]

# 5. Extraer la fila 1,2 y las columnas 2 y 3 

mtcars[1:2, 2:3]

# 6. Crear una nueva variable en la tabla que sea la suma de la variable: carb

library(tidyverse)

mtcars %>% summarise(carb_sum = sum(carb))
view(mtcars)

# Filtrar una tabla -------------------------------------------------------

# Ejercicio 9: usar el data frame iris

iris

# 1. Filtrar la base 1 variable: en la variable "Species" se filtre solo por "setosa"

iris_filt1 <- iris %>% filter(Species == "setosa")
iris_filt1


# 2. Filtrar la base 2 variables: Sepal.Length mayor a 4.9 y Sepal.Width menor a 3.6

iris_filt2 <- iris %>% filter(Sepal.Length >= 4.9 & Sepal.Width < 3.6)
iris_filt2

