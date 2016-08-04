#Crea el método mode que recibe como parámetro un Array y regresa un Array
# con los números que se repiten más veces.
#Si hay un número que se repite más veces que los demás, lo regresa en un
# Array con un solo elemento.

def mode (array)
  moda = Array.new
  frecuencia = Hash.new(0)
  array.each do |num|
    frecuencia[num] += 1
  end
   frecuencia = frecuencia.sort_by {|key, value| value}
   frecuencia.reverse!
   mayor_frecuencia = frecuencia[0][1]
   moda << frecuencia [0][0]
   for i in 1...frecuencia.length 
    if mayor_frecuencia == frecuencia[i][1]
      moda << frecuencia[i][0]
    end
  end
   moda.sort!
end

# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]