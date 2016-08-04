frutas = {
  "banana" => "platano",
  "strawberry" => "fresa",
  "lime" => "limon"
}

#en vez de acceder por medio de un índice se puede acceder con la clave (key) del hash.
p frutas["lime"]
#=>"limon"

catalogo_tienda = {
  "camisa": 5,
  "playera" => 3,
  :"short" => 7,
  "pantalon": 2
}

catalogo_tienda["calcetines"] = 3

new_hash = {}
canasta_de_frutas = {
  "manzanas": 3,
  :"peras" => 5,
  "melones" => 2
}
p canasta_de_frutas["fresas"] = 7

p fruta_seleccionada = canasta_de_frutas[:"manzanas"]
p fruta_seleccionada = canasta_de_frutas[:"peras"]
p fruta_seleccionada = canasta_de_frutas["melones"]

datos = Hash.new
datos[:name] = "Vanessa"
datos[:email] = "van.gg@"
datos[:genre] = "F"

p datos

#Define el método family_members que recibe el hash family y regresa 
#únicamente los miembros de la familia sisters y brothers.

family = {  
  uncles: ["jorge", "samuel", "steve"],
  sisters: ["angelica", "mago", "julia"],
  brothers: ["polo","rob","david"],
  aunts: ["maria","minerva","susana"]
}

def family_members(family)
  family = family[:sisters] + family[:brothers]
end

#test
p family_members(family) == ["angelica", "mago", "julia", "polo", "rob", "david"]

#1) Obtén el nombre de la persona.
#2) Agrega en el hash una ocupación para la persona.

person = {first_name: 'Bob', email: 'bob@mail.com', phone: '12345690'}
p person[:first_name]
person[:ocupacion] = "Bombero"

#USANDO EACH_VALUE Y EACH_KEY
def get_hash_key(hash)
 val = []
 hash.each_key do |value|
  val << value
 end
 val
end

def get_hash_value(hash)
 val = []
 hash.each_value do |value|
  val << value
 end
 val
end

def get_hash(hash)
 val = []
 hash.each do |key, value|
  val << "La llave es #{key} y su valor es #{value}" 
 end
  val
end

idiomas = {
  "1": "español",
  "2": "inglés",
  "3": "francés"
}

p get_hash_key(idiomas) == [:"1", :"2", :"3"]

p get_hash(idiomas) == ["La llave es 1 y su valor es español", "La llave es 2 y su valor es inglés", "La llave es 3 y su valor es francés"]