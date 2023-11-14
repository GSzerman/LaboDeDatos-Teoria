16%%2 # Da 1
num_char <- c(1, 2, 3, "a")
class(num_char)    # Devuelve "Character"

num_logical <- c(1, 2, 3, TRUE) 
class(num_logical) # Devuelve "numeric". Convirtió el TRUE en un 1


alturas_cm <- c(180, 178, 154, 202) # length(alturas_cm) = 3
frutas <- c("banana", "pera", "durazno") 
frutas <- c(frutas, "uva") # agrego uva al final
frutas <- c("naranja", frutas)
bajitos <- (alturas_cm < 165) # esto es de class "logical". tiene [FALSE,FALSE,TRUE,FALSE]
frutas[bajitos] # 

frutas %in% c("ciruela", "frutilla", "pera", "mandarina") # devuelve [FALSE FALSE TRUE FALSE FALSE]

nums = 1:10 # c(1,2,..,10)

m <- matrix(1:6, nrow = 2, ncol = 3) # dim(m) = 2 3
m[1][1] # da 1
m[fila,] # da la primer fila o la que se pida

matriz_columnas <- cbind(array1, array2) # cada array termina como columna
matriz_filas <- rbind(array1, array2) # cada vector termina como fila

# Mostrar las matrices
print(matriz_columnas)
print(matriz_filas)


sample(x = c("norte", "sur"), size = 7, replace = TRUE, prob = c(0.7, 0.3) ) 
# muestra aleatoria tamaño 7 a partir del vector x que tiene los valores "norte" y "sur"
# replace = true permite que los elementos se puedan repetir en la muestra
# Le doy el peso que quiero que tenga cada elemento

mean(nums, na.rm = TRUE) # Trae la media. remueve los NA si hubiese

peso_sin_NA <- peso_kg[!is.na(peso_kg)]
personas_63kg <- sum(peso_sin_NA == 63) # Esto calcula cuantas personas pesan 63kg


tabla_frecuencias <- table( c(1, 2, 2, 3) ) 
# En la primer fila me aparece un distinct del valor 1,2,3
# En la segunda fila me aparece la cant de apariciones de ese valor 1,2,1
# Si utilizase prop.table( c(1,2,2,3)) me devolveria en la segunda fila 0.25, 0.5, 0.25

d <-  data.frame(x = 1:5, y = letters[1:5], z = c(T,T,F,T,F)) # x es una columna, y es otra columna..
unique(d$z) # me hace un distinct de la columna z


colores <- c("rojo", "verde", "azul", "rojo", "verde") # class(colores) = "character"
colores_factorizado = factor(colores) # class(colores_factorizado) = "factor" . Converti esta variable en categorica
levels(colores_factorizado) # me muestra el distinct de las categorias


ggplot(data = df, 
       mapping = aes(x = year, y = pop, size = country)) + # size o color podria haber usado
      # mapping = aes(x = year, y = pop, color = country)) # != (aes(x=year,y=pop),color=blue)
  geom_point() + # Grafico de dispersion (geom_smooth(),  geom_line(), geom_bar()) Cada una puede recibir todos los mismos args que ggplot
  theme_classic()
#guia 3

#cat nominal: Colores (rojo, verde, azul)
#cat ordinal: Niveles de satisfacción (baja, media, alta)
#num discreta / continua (son faciles)

ggplot(data = gapminder, aes(x = continent, y = lifeExp)) +
  geom_boxplot() + 
  labs(title = "Boxplot de esperanza de vida por continente", x = "Continente", y = "Esperanza de Vida") +
  theme_minimal() +
  facet_wrap(~continent) # Esto le agrega el facetado para que cada continente tenga su box plot uno al lado de otro


#guia 4

res <- penguins %>%
  drop_na() %>%
  rename(masa_corporal_g = body_mass_g) %>% # renombro una columna
  mutate(col_nueva = col1 / col2, peso = ifelse(col1 < 4000, "chico", "grande"))) %>% # creo nuevas columnas
  select(species, bill_ratio, starts_with("bill")) %>% # selecciono dos de las columnas y las que starts with bill
  filter(species %in% c("Adelie", "Gentoo") || island == "Dream") %>%  # es un where
  group_by(species, island, year)) %>%
  summarise(bill_ratio_mean = mean(bill_ratio),
            cant_observ = n() ) # n() es como el count

# Paradoja de Simpson: tendencia que aparece en subgrupos de datos se invierte al combinar esos subgrupos,
# esto destaca la importancia de mirar la confusion matrix

# guia 5

df1 = rbind(fila1,fila2) 
df2 = cbind(col1,col2)

res <- df1 %>%
  inner_join(df2, by = "ID") %>% 
  left_join(df3, by = "ID") %>%
  distinct(ID) # finalmente hago un distinct

limites_etarios <- c(18, 21, 27, 80)
dfEst <- dfEst %>%
  mutate(GrupoEtario = cut(edad, breaks = limites_etarios, labels = etiquetas_etarios))


indices <- which(is.na(vect1) & is.na(vect2)) # retorno un vector de indices que sean NA para vect1 y vect2
return(indices)


# guia 6


# Resta resumir:
# https://ldd2023.netlify.app/slides/script_class.R
# https://docs.google.com/presentation/d/1v5PKKk5BVrYsVZnKNG9zu2g0jRhuzVQiXBqPM-vGLGs/edit#slide=id.g27e0cf72f59_0_41
# https://docs.google.com/presentation/d/17yJFkzKTRdFo9aeqyXpgY6yQKOQjrh3DHiX6EWFu66M/edit#slide=id.gefc0be6deb_0_132
# Guias 2 a 8 inclusive


