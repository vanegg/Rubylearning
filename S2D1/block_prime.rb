#Define el método prime que acepte un parámetro y use yield para 
#llamar a un bloque. El bloque debe regresar los primeros diez números 
#primos en un arreglo.
require 'prime'

def prime
  yield
end

prime{p Prime.first 10}
#test
#=>[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]