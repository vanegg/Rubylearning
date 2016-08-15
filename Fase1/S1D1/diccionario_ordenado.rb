# Escribe un programa llamado diccionary_sort que pida al usuario capturar las palabras que quiera (una palabra por línea) y para finalizar la captura tenga que presionar "enter".

# Deberás utilizar un array para guardar las palabras.

# Una vez que el usuario presiona "enter" el programa deberá arrojar la lista de palabras en orden alfabético.

# Pregúntate: 
# Que pasará si el usuario captura un número o un string vacío. Como puedes solucionarlo.

# Vamos a elevar la dificultad.
# Modifica el programa para que ignore el orden si el usuario capturó las palabras en mayúsculas o minúsculas, pero al enlistarlas deberá mantener su formato.

def diccionary_sort
  puts "Escribe una palabra: "
  palabras = Array.new
  loop do
    palabra = gets.chomp
  break if palabra == ""
  palabra.strip!
  if palabra.to_i == 0 && palabra != "0"
      palabras << palabra unless palabra.strip == ""
   end
    puts "Escribe otra palabra(o presiona 'enter' para finalizar): "
  end
  puts "Felicidades! Tu diccionario tiene #{palabras.length} palabras:" 
  puts palabras.sort
end

diccionary_sort