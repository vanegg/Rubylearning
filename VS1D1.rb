=begin
print "What's your first name? "
first_name = gets

print "What's your last name? "
last_name = gets.chomp

print "What city are you from? "
city = gets.chomp

print "What state or providence are you from? "
state = gets.chomp

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}"

title = "Titulo"
description = "Descricion"
number_of_likes = 0

street = "Sonora"
number = "126"
state = "CDMX"
city = "Mexico"
zip = "01100"

IDENT = 1

num1 = 90
num2 = 4

first_name = "Roberto"
last_name = "Monroe"
gender = "M"

puts "Welcome #{first_name}, your last_name is '#{last_name}' and your gender is #{gender}"


entero = 0
flot_1 = 1.1
flot_2 = 1.2
bool_1 = true
bool_2 = 50 == 50
bool_3 = 60 < 30
bool_4 = true || false
bool_5 = (!!0 && !!7)
array = ["hola", "mundo"]
hash = {a: 1, b: 2, c: 3}


suma_uno = 4 + 7
suma_dos = suma_uno + 8
suma_dos == 19
#=> true

resta_uno = 3 -2
valor = "uno"
#resta_dos = resta_uno - valor (No se puede)
#resta_dos == 0
#=> error

multiplicacion = 6 * 5
division = multiplicacion / 5
operacion = division - 3
cadena = "Hola" * operacion
cadena == "HolaHolaHolaHola"
#=> true

puts "Escribe un nombre:"
name = "Rodrigo"
letters = name.length
message = "Welcome #{name}, your name has #{letters} letters"
p message == "Welcome Rodrigo, your name has 7 letters"
#=>true

operacion1 = (4 < 7 || false) && (true || true)
operacion2 = !(((8 ** 3 == 7 * 7) || !false) && (false && true))
operacion3 = operacion1 == operacion2
p operacion3 == true
#=> true

'8' == 8? puts("TRUE") : puts("FALSE")
#=> false

number = 4
if ((number * 4) / 4) == (12 + 12 - number - 16)
  puts "That's correct"
else
  puts "Think a little"
end
#=> That's correct

num1 = 7
num2 = 5

if num1 + 1 <= num2
  puts "Menor o Igual!"
elsif num1 + 1 >= num2
  puts "Mayor o Igual!"
elsif num2 + 1 == num1
  puts "IGUAL!"
else
  puts "NINGUNO!"
end
#=> Mayor o Igual


suma = 30+10
resta = 50-10
p suma == resta
#=>true

var1 = 20
var2 = 10

resta = var1 -5.5
multiplicacion = resta * var1 + var2
division = multiplicacion / 3
p division == 100
#=>true



num1 = 90
num2 = 50

sum = num1 + num2
difference = num1 - num2
product = num1 * num2
quotient = num1.fdiv(num2)
modulus = num1 % num2


"hEllO".upcase
"hEllO".downcase
"hEllO".length
"hello".start_with?("hell") 
"hello".end_with?("heaven", "ello")  



saludo = "Hola Mundo"

p saludo[5..7]
p saludo[5..7] = "All"
p saludo.capitalize
p saludo.chr
p saludo = saludo.downcase
p saludo.count "o", "do"
p saludo.empty?
p saludo.sub("a", "i")
p saludo.gsub("a", "i")
p saludo.include? 'do'
p saludo.index('l',3)
p saludo.reverse
p saludo.split(//)
p saludo.strip
p saludo


def sum_words (string_1, string_2)
  puts string_1 + " " + string_2
end 

sum_words("hola","como estás")
sum_words("hello","world")
sum_words("Grace","Hopper")

def empty_method (param1, param2)
  #Método vacío
end



def suma(a, b)
  return "#{a} es mayor que #{b}" if a > b

  return "#{a} no es mayor que #{b}"
end

#test
p suma(10, 5) == "10 es mayor que 5"
p suma(4, 23) == "4 no es mayor que 23"

=end


def caesar_cipher(original_text, rotate_number)
  original_alphabet = "abcdefghijklmnopqrstuvwxyz"
  cipher_text = ""
   original_text.split("").each do |letter|
    if "?.,! ".include?(letter)
      cipher_text << letter
    else
     
      original_alphabet.index(letter.downcase)
     #p "cipher_alphabet = oa[  #{ original_alphabet.index(letter.downcase)} + #{rotate_number} % #{original_alphabet.size}]"
      cipher_alphabet = original_alphabet[(original_alphabet.index(letter.downcase) + rotate_number) % original_alphabet.size]
      if letter == letter.upcase
        cipher_text << cipher_alphabet.upcase
      else
        cipher_text << cipher_alphabet
      end
    end
  end
  cipher_text
end

p caesar_cipher("Ana", 2) == "Cpc"
p caesar_cipher("sol", 3) == "vro"