def hello
  puts "Hello... You're in the method"
  yield
  puts "Hello again... You're back to the method"
  yield
end

hello {puts "You are in the block"}


#Ejemplo con parámetros
def hello
  yield 10
  puts "Hello... You're in the method"
  yield 20
end

hello {|number| puts "You are in the block #{number}"}