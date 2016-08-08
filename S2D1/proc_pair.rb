#Crea el Proc pair que identifique números pares. Haz pasar la prueba.

numbers = [2, 4, 7, 10, 23, 34, 45, 42]
pair = Proc.new{|num| num % 2 == 0 ? "Pair" : num }
#test
p numbers.map(&pair) == ["Pair", "Pair", 7, "Pair", 23, "Pair", 45, "Pair"]