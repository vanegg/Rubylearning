#Convertir nested arrays en hashes
#Intenta convertir la tabla del ejercicio pasado en un array donde cada persona sea un hash. 
#Para ayudarte existe un método que facilita este proceso pero requiere que tu array de arrays este en cierto formato.

# Ejemplo:

# [{"Nombre"=>"Rodrigo García", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]},...

table = []
def datos (name, age, genre, group, grades)
  person = Hash.new
  person["Nombre"] = name
  person["Edad"] = age
  person["Genero"] = genre
  person["Grupo"] = group
  person["Calificaciones"] = grades
  person
end

table << datos("Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8])
table << datos("Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8])
table << datos("Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8])
table << datos("Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8])
table << datos("Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8])
puts
p table
p table[0]["Nombre"]  == "Rodrigo García"
p table[1]["Edad"]  == 12
p table[2]["Genero"]  == "Masculino"
p table[3]["Grupo"]  == "Segundo"
p table[4]["Calificaciones"]  == [7, 8, 9, 9, 8]
p table[4]["Calificaciones"][2]  == 9