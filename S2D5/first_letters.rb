#Crea el método first_letters que recibe como parámetro una oración 
#y regresa dentro de un array las primeras letras de cada palabra de la oración.

def first_letters(string)
  string.split.map { |word| word.chars.first }
end
# Pruebas

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]