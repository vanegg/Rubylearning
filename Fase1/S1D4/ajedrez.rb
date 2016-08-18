#La primera actividad será crear un método que simplemente imprima la representación de un tablero de ajedrez. Representa las fichas por su nombre y los colores con una letra por ejemplo: (Torre-B, Caballo-B, Alfil-B, Reina-B, Rey-B y Peón-B).

#Inicialmente crea el tablero a mano y cuando te des cuenta de la labor repetitiva que es, crea un método que lo haga de manera más eficiente.


def ajedrez
  name = ["Torre","Cabllo","Alfil","Reina","Rey","Peon"]
  color = ["-N", "-B"]
  a = []
  color.each do |color|
    temp = []
    name.each do |pieza|
      temp << "#{pieza}#{color}"
    end
    a << temp
  end
  a
end

 def bloque  
  linea
  linea
  linea
  puts "---------" * 8 
 end

 def linea 
puts "|        " * 8 + " |"
 end

 a = ajedrez
 c = 0

puts "---------" * 8 
linea
puts "|#{a[c][0]} |#{a[c][1]}|#{a[c][2]} |#{a[c][3]} |#{a[c][4]}   |#{a[c][2]} |#{a[c][1]}|#{a[c][0]}  |"
linea
puts "---------" * 8 
linea
puts "|#{a[c][5]}  " * 8 + " |"
linea
puts "---------" * 8 
bloque
bloque
bloque
bloque
c += 1
linea
puts "|#{a[c][5]}  " * 8 + " |"
linea
puts "---------" * 8 
linea
puts "|#{a[c][0]} |#{a[c][1]}|#{a[c][2]} |#{a[c][3]} |#{a[c][4]}   |#{a[c][2]} |#{a[c][1]}|#{a[c][0]}  |"
linea
puts "---------" * 8 