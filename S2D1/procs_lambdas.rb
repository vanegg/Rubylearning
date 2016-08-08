count = 1
my_proc = Proc.new { count * 2 }

p my_proc.call

#Es posible llamar a un Proc desde un método.

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 3 }
  my_proc.call
  puts "After proc"
end

p call_proc

numbers = [2, 4, 7, 10]
square = Proc.new { |number| number ** 2 }
p numbers.map(&square)

#Lambdas
this_is_a_lambda = lambda { "This is a Lambda"}
p this_is_a_lambda.call

cube = lambda { |x| x ** 3}
p cube.call(5)

strings = ["ruby", "java", "c++", "javascript"]
char_upcase = lambda { |char| char.capitalize}
p symbols = strings.collect(&char_upcase)

# Funciona sin argumentos
t = Proc.new { |x,y| puts "I don't care about arguments! #{x}, #{y}" }
t.call
#=> I don't care about arguments! , 

#Ejemplo de Lambda con número incorrecto de argumentos:
# Levanta una excepción... faltan argumentos
t = lambda { |x,y| puts "I care about arguments! #{x}, #{y}" }
t.call(5)

#Ejemplo de Lambda con número correcto de argumentos:
# Funciona sólo con número correcto de argumentos
t = lambda { |x,y| puts "I care about arguments! #{x}, #{y}" }
t.call(5, 2)
#=> I care about arguments! 5, 2

# Funciona
my_lambda = lambda { return 1 }
puts "Lambda result: #{my_lambda.call}"

#Ejemplo de Proc con return desde afuera del método actual:
# Levanta una excepción
my_proc = Proc.new { return 1 }
puts "Proc result: #{my_proc.call}"

#Ejemplo de Proc con return desde el método actual:
# Funciona
def current_method
  my_proc = Proc.new { return 1 }
  puts "Proc result: #{my_proc.call}"
end

p current_method