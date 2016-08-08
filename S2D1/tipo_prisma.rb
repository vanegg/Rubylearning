#Crea el método prism_type que recibe como parámetros el tamaño de los 3 lados 
# de un prisma.

# Si todos los lados son de diferentes tamaños la figura geométrica recibe el 
# nombre de cuboide.
# Si 2 lados son del mismo tamaño: prisma rectangular.
# Si los 3 lados son del mismo tamaño es un cubo.

# Tu método debe regresar el nombre correcto de la figura de acuerdo a las reglas de arriba.

def prism_type (l1,l2,l3)
  return "cuboide" if l1 != l2 && l2 != l3 && l1 != l3
  l1 == l2 && l2 == l3 ? "cubo" : "prisma rectangular"
end

# Pruebas

p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"