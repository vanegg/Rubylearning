#Crea el método min que recibe como parámetro un Array de números y regresa 
#el número más pequeño. Crea tu propio algoritmo no utilices métodos nativos 
#de ruby de la clase array como (min y max).

def min (array)
  array.sort
  array[0]
end

def min (array)
  minimo = array[0]
  array.each do |num|
    minimo = minimo > num ? num : minimo
  end
  minimo
end

# Pruebas
p min([-20, -10, 0, 10, 20]) == -20
p min([1, 2, 3, 4, 5]) == 1
p min([5, 4, 3, 2, 1]) == 1