#Regresa a algún programa que hayas elaborado dentro del curso que tenga más
# de 15 lineas de código. Refactoriza este código y entregalo como solución.

#Old method
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

#Metodo Refactorizado
def mode(array)
  moda = []
  frecuencia =[]
  array.each {|num| frecuencia << [array.count(num), num]}
  for i in 0...frecuencia.length    
     moda << frecuencia[i][1] if frecuencia.max[0] == frecuencia[i][0]
  end
   moda.uniq.sort!
end


# Pruebas
p mode([1, 2, 2, 2,2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0, 6, 6, 6, 6]) == [6]