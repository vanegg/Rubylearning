#La manera más común de organizar información es en una tabla de datos. 
#Crea un arreglo en el que guardes la información de la siguiente tabla y después verifica que pasen las siguientes pruebas:

# | Nombre           | Edad | Genero   | Grupo    | Calificaciones |
# +------------------+------+----------+----------+----------------+
# |Rodrigo García    | 13   |Masculino |Primero   |[9, 9, 7, 6, 8] |                 
# |Fernanda Gonzalez | 12   |Femenino  |Tercero   |[6, 9, 8, 6, 8] |   
# |Luis Perez        | 13   |Masculino |Primero   |[8, 7, 7, 9, 8] |                
# |Ana Espinosa      | 14   |Femenino  |Segundo   |[9, 9, 6, 8, 8] |        
# |Pablo Moran       | 11   |Masculino |Segundo   |[7, 8, 9, 9, 8] |

  table = []
def datos (name, age, genre, group, grades)
  person = []
  person[0] = name
  person[1] = age
  person[2] = genre
  person[3] = group
  person[4] = grades
  person
end

table << datos("Nombre", "Edad", "Genero", "Grupo", "Calificaciones")
table << datos("Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8])
table << datos("Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8])
table << datos("Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8])
table << datos("Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8])
table << datos("Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8])

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6