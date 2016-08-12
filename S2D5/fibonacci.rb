#Crea el método fibonacci que recibe como parámetro un entero positivo (n) 
#y regresa el n número en la serie de Fibonacci.

#La serie de Fibonacci comienza con los números 1 y 1, y a partir de éstos,
#cada siguiente número se obtiene de la suma de los dos números anteriores.

#1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...

def fibonacci(num)
  return 1 if num <= 2 
  fibonacci(num-1) + fibonacci(num-2)
end

# Pruebas

p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(10) == 55