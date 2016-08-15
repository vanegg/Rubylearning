# Actividades
# El primero de los métodos necesita ser refactorizado encadenando los metodos 
#a una línea.

# El segundo de los métodos es un ejemplo de un método de una linea pero muy 
#complicado de leer y entender que hace, trata de mejorarlo aunque uses más lineas.

# Para este ejercicio el siguiente código contiene una explicación de como 
#resolver cada parte del código.

# TODO: Refactoriza buscando elegancia 
def shout_backwards(string)
  string.upcase.reverse + "!!!"
end

# AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
   prime =  array.find_all do |x| 
      divisible = (2..x-1).select {|i| x % i == 0 }
      divisible.count == 0
    end
    prime.map{|p| p*p}
end

# Driver code...no edites este texto. En la consola esto deberá imprimir puros trues
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]
