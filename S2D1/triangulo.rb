#Crea el método triangle_type que recibe como parámetros el tamaño de los 3 lados 
#de un triángulo. El método debe regresar el nombre correcto de la figura de acuerdo 
#a las reglas presentadas en la prueba.

def triangle_type (l1,l2,l3)
  return "Escaleno" if l1 != l2 && l1 != l3 && l2 != l3
  l1 == l2 && l2 == l3 ?  "Equilatero" : "Isósceles"
end

#test
p triangle_type(7, 7, 7) == "Equilatero"
p triangle_type(8, 8, 4) == "Isósceles"
p triangle_type(6, 4, 3) == "Escaleno"
p triangle_type(15, 7, 4) == "Escaleno"