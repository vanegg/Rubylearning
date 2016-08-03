#Miércoles 3 de Agosto 2016
#Semana 1, Día 3 CodeaCamp
#Programas realizados por VGG

=begin
# Define un arreglo de números. Crea una estructura de control iterativa 
# muy parecida al ejercicio anterior, con la diferencia que no imprime los 
# números sino que imprime un nuevo arreglo con los elementos del primer 
# array más 20.

array = [1, 2, 3]
array_sumado = []
array.each do |num|
  array_sumado.push(num + 20)
end
p array_sumado

#Obtén e imprime la palabra "carpeta" del siguiente arreglo:

utiles = [["libro", "libreta", "cuaderno"], ["carpeta", "folder"]]
p utiles[1][0]


array = ["pegamento", 7, 18, [24, ["refresco", "sprite"]], 12, { "firstname" => "Mark", "lastname" => "Martin", "age" => "24", "gender" => "M" }]

p array.index(7)
#1

p array[5]["firstname"]
#"Mark"

p array[3][1][1]
#"sprite"

#Define el método get_index que recibe un arreglo de números y regresa el
# valor y el índice de cada uno de los elementos en un array.

def get_index (array)
  array_index = []
  array.each do |elem|
     indexes = []
     indexes << elem
     indexes << array.index(elem)
     array_index << indexes
  end
  array_index
end


p get_index([2, 10, 6, 34, 0, 3]) == [[2, 0], [10, 1], [6, 2], [34, 3], [0, 4], [3, 5]]

#/////////////////
def numbers(num)
  num.each do |item|
    p item + 1
  end
end

numbers([2, 5, 7, 1, 0])


#Define el método numbers que recibe un arreglo de números y regresa true 
#si un número dado aparece en la lista.

def numbers (array, valor)
  array.each do |elem|
    if elem == valor
      return true
    end
  end
  false
end

#test
p numbers([1, 3, 5, 7, 9, 11], 5) == true
p numbers([1, 50, 24, 7, 9, 100], 25) == false
p numbers([11, 33, 55, 77, 99, 11], 33) == true
p numbers([20, 43, 55, 77, 99, 40], 43) == true

#Define el método array_index que recibe como argumento un array de letras,
# así como un factor y deberá regresar un arreglo como el siguiente:

#Primera forma de hacer
def array_index (letras, factor)
  array_factor = []
  letras.each do |letra|
    for i in 1..factor
      par = []
      par << letra
      par << i
      array_factor << par
    end
  end
  array_factor
end

p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]

#Segunda forma de hacer

def array_index (letras, factor)
  array_factor = []
  letras.each do |letra|
    for i in 1..factor
      array_factor << [letra, i]
    end
  end
  array_factor
end
#test
p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]

#Define el método array_index que recibe como argumento un array de 
#letras, así como un factor y deberá regresar un arreglo como el siguiente:

def array_index (letras, factor)
  array_factor = []
  letras.each do |letra|
    par = []
    for i in 1..factor      
      par << i      
    end
    array_factor << [letra, par]
  end
  array_factor
end

p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]


#Varios métodos en una misma línea

arr = ["c", "b", "a"]
arr = arr.product(Array(1..3))  #[["c",1],["c",2],["c",3],["b",1],["b",2],["b",3],["a",1],["a",2],["a",3]]
p arr.last.first
p arr.first.last
p arr.last.delete(arr.last.first) == "a"
#=>true

#fizzbuzz es un juego para enseñarles a los niños divisiones donde van
 #contando en voz alta y dependiendo de las siguientes reglas reemplazan 
 #algunos de los números por palabras.

#{}"FizzBuzz" para múltiplos de 3 y 5
#{}"Fizz" para múltiplos de 3
#{}"Buzz" para múltiplos de 5
#El mismo número para cualquier otro valor.
#Crea el método fizzbuz que recibe como parámetro dos números enteros (min
# y max) y regresa un Array desde min hasta max sustituyendolos con las 
#reglas de fizzbuzz.

def fizzbuzz(min, max)
  i=min
  j=0
  array = []

  for i in min..max

    if i % 3 == 0 && i % 5 == 0
      array << "FizzBuzz"
    elsif i % 3 == 0
      array << "Fizz"        
    elsif i % 5 == 0
      array << "Buzz"  
    else
      array << i
    end

  end

  array
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]

#Crea el método multiplication_tables que recibe como parámetro un número 
#entero e imprime las tablas de multiplicar desde el 1 hasta el número que 
#le pasen.

 def multiplication_tables(a)

  for i in 1..a
    for j in 1..10
      print i * j 
      print "\t"   
    end
    puts
  end
end  

multiplication_tables(6)

#Define el método join_arrays que recibe como parámetro 2 Arrays y regresa
# un nuevo Array con el contenido de los 2 Arrays.

def join_arrays (array_1, array_2)
  joined_array = array_1 + array_2
end

# Pruebas
p join_arrays([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']

#Crea 4 métodos que correspondan con las 4 operaciones aritméticas básicas:
# add, substract, multiply y divide.

def add (num_1, num_2)
  num_1 + num_2
end

def substract (num_1, num_2)
  num_1 - num_2
end

def multiply (num_1, num_2)
  num_1 * num_2
end

def divide (num_1, num_2)
  num_1.to_f / num_2
end

p add(10, 2) == 12
p substract(10, 2) == 8
p multiply(10, 2) == 20
p divide(10, 4) == 2.5

#Crea el método decade que recibe un año y regresa la década del año para
# todo el siglo.

def decade (year)
  case year%100
  when  0..19
     ""
  when 20..29
     "Twenties"
  when 30..39
     "Thirties"
  when 40..49
     "Forties"
  when 50..59
    "Fifties"
  when 60..69
     "Sixties"
  when 70..79
     "Seventies"
  when 80..89
     "Eighties"
  when 90..99
     "Nineties"
  else
     ""
  end
end

# Pruebas
p decade(1920) == "Twenties"
p decade(1943) == "Forties"
p decade(1952) == "Fifties"
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"

=end
