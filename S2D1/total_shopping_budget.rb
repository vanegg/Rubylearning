# Crea el método total_shopping_budget que recibe como parámetros:

# Un Array con gastos.
# Compra mínima.
# Compra máxima.
# Y regresa cuántos gastos del Array son menores que 30 y están entre la 
# compra mínima y compra máxima.

def total_shopping_budget (array,min,max)
  array.count {|num| num <= max && num >= min}
end

#Pruebas
p total_shopping_budget([10.50, 20.20, 30.10, 40.56, 50.13, 60.45], 20, 30) == 1
p total_shopping_budget([18.30, 19.12, 20.21, 23.56, 24.78, 27.32], 20, 27) == 3