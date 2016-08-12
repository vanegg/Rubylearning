#Un número de Dudeney es un número entero que es un cubo perfecto, 
#de forma que la suma de sus dígitos da como resultado la raíz cúbica 
#del número.

#     1 =  1 x  1 x  1 |  1 = 1
#   512 =  8 x  8 x  8 |  8 = 5 + 1 + 2
#  4913 = 17 x 17 x 17 | 17 = 4 + 9 + 1 + 3
#  5832 = 18 x 18 x 18 | 18 = 5 + 8 + 3 + 2
# 17576 = 26 x 26 x 26 | 26 = 1 + 7 + 5 + 7 + 6
# 19683 = 27 x 27 x 27 | 27 = 1 + 9 + 6 + 8 + 3

def dudeney_number?(num)
  sum ||= 0
  num.round.to_s.chars.each { |digit| sum += digit.to_i }
  sum == (num ** (1/3.0)).round ? true : false 
end

# Pruebas

p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1_728) == false
p dudeney_number?(5_832) == true