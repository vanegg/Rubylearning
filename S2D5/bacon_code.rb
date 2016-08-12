#El código Bacon es un método para ocultar mensajes.
#Cada letra del mensaje se reemplaza por un grupo de cinco letras 'A' o 'B'.

#Crea el método baconian_cipher que recibe un mensaje oculto con el 
#código Bacon y regresa el mensaje original.

def baconian_cipher (code)
  array = code.gsub("A","0").gsub("B","1").scan(/.{5}/)
  array.map {|word| (word.to_i(2) + (word.to_i(2) < 9 ? 97 : word.to_i(2) < 19 ? 98 : 99)).chr }.join    
end

# Pruebas

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"(word.to_i(2) < 9 ? 97 : word.to_i(2) < 19 ? 98 : 99