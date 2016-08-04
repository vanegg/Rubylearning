#Crea el método max que recibe como parámetro un Array de números y regresa
#el número más grande. Crea tu propio algoritmo no utilices métodos nativos
#de ruby de la clase array como (min y max).

def max (array)
  array.sort!.reverse!
  array[0]
end

def max (array)
  maximo = array[0]
  array.each do |num|
    maximo = maximo < num ? num : maximo
  end
  maximo
end


# Pruebas
p max([-20, -10, 0, 10, 20]) == 20
p max([1, 2, 3, 4, 5]) == 5
p max([5, 4, 3, 2, 1]) == 5