#El primero de los métodos necesita ser refactorizado encadenando los 
#metodos a una línea.
#El segundo de los métodos es un ejemplo de un método de una linea 
#pero muy complicado de leer y entender que hace, trata de mejorarlo
# aunque uses más lineas.
#Para este ejercicio copia el siguiente código el cual que contiene 
#una explicación de como resolver cada parte.


# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
    string.reverse.swapcase.gsub!(/[aeio]/,"*")
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

def max_letter_frequency_per_word(sentence)
  large_words = words_longer_than(sentence.split, 3)
  num_array = letter_per_word(large_words, "e")
  numbers_larger_than(num_array)
end

def words_longer_than(array,num)
  array.select {|word| word.length > num}
end

def letter_per_word(array,letter)
  array.map{ |w| w.count("e") }
end

def numbers_larger_than(num_array)
  num_array.max
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero en entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
