=begin
#Define una variable y asígnale un arreglo de números. 
#Crea una estructura de control iterativa que permita 
#imprimir la suma de cada número del arreglo más 5.

arreglo = [1,2,3,4,5]

arreglo.each do |x|
  x += 5
  p x
end


def get_error(num)
  case num
  when 0..8
    puts "0..8"
  when 9..20
    puts "9..20"
  else
    puts "Good Luck"
  end
end

get_error(20.5)


#Define el método large que recibe un string como argumento. 
#El método debe regresar el string en mayúsculas solamente 
#si el string es más grande que 20 caracteres.

def large (cadena)
  if cadena.length > 20
    cadena.upcase!
  end
    cadena
end

p large("Hola vamos a la comida") == "HOLA VAMOS A LA COMIDA"
p large("Es hora de dormir") == "Es hora de dormir"


#Define el método range que recibe un número entre 0 y 100. 
#El método debe regresar el rango en el que se encuentra este número,
#ya sea entre 0 y 50, 51 y 100 o arriba de 100.
 
def range (entero)
  if(entero >= 0)
    case entero
    when 0..50
      "#{entero} is between 0 and 50"
    when 51..100
      "#{entero} is between 51 and 100"
    else
      "#{entero} is above 100"
    end
  end  
end 

#test
p range(10) == "10 is between 0 and 50"
p range(34) == "34 is between 0 and 50"
p range(79) == "79 is between 51 and 100"
p range(67) == "67 is between 51 and 100"
p range(54) == "54 is between 51 and 100"
p range(120) == "120 is above 100"



#Crea el método shipping que recibe como parámetro address.
#Si el address incluye Mexico regresa "Order received", 
#para cualquier otro caso regresa "We only ship orders to Mexico".

def shipping (address)
  if address.include? "Mexico"
    "Order received"
  else
    "We only ship orders to Mexico"
  end
end  

# Pruebas

p shipping('Insurgentes Sur 8932, Alvaro Obregon, Mexico') == "Order received"
p shipping('Geary Blvd 3320, San Francisco, Estados Unidos') == "We only ship orders to Mexico"

#Crea el método say_hi que recibe como parámetro name.
#Si el nombre que recibes es tu mismo nombre regresa "Welcome back",
# para cualquier otro nombre regresa "Hi" y el nombre que recibiste.

def say_hi (name)
  if name == 'Vanessa'
    "Welcome back"
  else
    "Hi, #{name}"
  end
end

# Pruebas
p say_hi('Vanessa') == "Welcome back"
p say_hi('Juan') == "Hi, Juan"

#Crea el método error_message que muestre un mensaje de tarjeta inválida
#al usuario. Este método acepta los parámetros name, credit_card_type,
#credit_card_number.

def error_message (name, credit_card_type, credit_card_number)
  "#{name}, The #{credit_card_type.upcase} Credit Card Number 'xxx-#{credit_card_number[-3..-1]}' You Provided is Invalid."
  #name + ", The " + credit_card_type.upcase + " Credit Card Number 'xxx-" + credit_card_number[-3..-1] + "' You Provided is Invalid."
  
end

#Pruebas
p error_message('Rodrigo', 'American Express', '205782460166975') == "Rodrigo, The AMERICAN EXPRESS Credit Card Number 'xxx-975' You Provided is Invalid."
p error_message('Carla', 'Visa', '3912888888881881') == "Carla, The VISA Credit Card Number 'xxx-881' You Provided is Invalid."

#Crea la variable payment y asígnale el valor 'Welcome, your Visa Credit 
#Card has been processed'. Imprime "Credit Card has been Charged si la 
#variable payment incluye la palabra Visa, para cualquier otro caso 
#imprime "We only accept visa credit card".

payment = 'Welcome, your Visa Credit Card has been processed'
accion = (payment.include? 'Visa') ? "Credit Card has been Charged" : "We only accept visa credit card"
p accion

#Crea las variables name y age y asígnales valores. Imprime "Welcome" si 
#el nombre asignado a la variable name es tu mismo nombre y además el 
#usuario es mayor de edad, para cualquier otro nombre y edad imprime "No 
#eres Mayor de Edad".

name = 'Vanessa'
age = 23

if (name == 'Vanessa' && age >= 18)
  puts "Welcome"
else
  puts "No eres mayor de Edad"
end



first_name = "Rogelio"
last_name = "manzano"
mensaje = "Nombre Correcto"

first_name.upcase!
last_name.capitalize!

puts mensaje if first_name == "ROGELIO" && last_name == "Manzano"

def each_loop(list)
  list.map do |item|
    item + 1
  end
end

p each_loop([1, 4, 2, 10, 9]) == [2, 5, 3, 11, 10]


#Define el método user que interactuará con el usuario para recibir 
#cualquier valor hasta que el usuario escribe la palabra "Ya". Al final 
#este método regresa el número de entradas que hizo el usuario.

def user
  i = 0
  arg = ""
  while arg != "Ya"
    print "Hola, escribe un valor: "
    arg = gets.chomp
    i += 1
  end
  "Número de entradas del usuario: #{i}"
end
  
p user

#Crea el método shortest que recibe como parámetro un Array de Strings y 
#regresa el string o strings más cortos dentro de un arreglo.

def shortest (array)
  lengths = []
  short = []
  array.each do |elem|
    lengths << elem.length
  end
  min = lengths[0]
  lengths.each do |elem|
    if min >= elem
      min = elem
    end
  end
  array.each do |elem|
    if elem.length == min
      short << elem
    end
  end
  short
end

# Pruebas
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]


#Crea el método longest que recibe como parámetro un Array de Strings y
# regresa el string o strings más largos dentro de un arreglo.

def longest (array)
  lengths = []
  long = []
  array.each do |elem|
    lengths << elem.length
  end
  max = lengths[0]
  lengths.each do |elem|
    if max <= elem
      max = elem
    end
  end
  array.each do |elem|
    if elem.length == max
      long << elem
    end
  end
  long
end

# Pruebas
p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"]



#Define el método vowels que recibe como parámetro un string y regresa 
#el número de vocales que tiene ese string.

def vowels (vocal)
  vocal.count "aeiou"
end

p vowels("hello") == 2
p vowels("Magic") == 2
p vowels("Apologize") == 4

=end

#Define el método replace_vowels que reciba una lista de palabras y 
#reemplaza todas las vocales de cada string con una `"x".

def replace_vowels (array)
  array.map do |vocal|
   vocal.gsub(/[aeiou]/, 'x')
  end
end


p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]