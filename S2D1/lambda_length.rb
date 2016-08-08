#Crea un Lambda que muestre los strings que tienen más de 4 letras. 
#Haz pasar las pruebas.

strings = ["ruby", "java", "c++", "javascript"]
char_length = lambda {|word| word.to_s if word.length > 4 }
p strings.select(&char_length).join(", ") == "javascript"