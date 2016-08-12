#Crea el método factorial que recibe como parámetro un entero positivo
#y regresa el factorial.

#El factorial es la multiplicación de todos los enteros desde 1 
#hasta el número.
#factorial(6) = 1 * 2 * 3 * 4 * 5 * 6 = 720

  def factorial(factor)
      return 1 if factor == 1 || factor == 0
      factor *= factorial(factor - 1)
  end

# Pruebas

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720