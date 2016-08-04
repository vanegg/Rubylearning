
#Crea el método median que recibe como parámetro un Array de números 
#y regresa la "mediana".
#Busca como calcular este valor.

def median (array)
  array.sort!
  mediana = array.length.to_f/2
  mediana = mediana % 1 == 0 ? (array[mediana]+array[mediana-1])/2.0 : array[mediana - 0.5]

end

# Pruebas
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8
