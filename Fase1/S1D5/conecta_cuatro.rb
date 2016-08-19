#Conecta Cuatro
#La primera implementación de tu programa será totalmente automatizada, esto quiere decir que de manera aleatoria el programa eligirá donde tira cada participante su ficha.

# Estos son algunos de los métodos que deberá tener tu clase ConectFour:

# print_board # imprime y actualiza la representación del tablero.
# drop_chip!(player) # determina una columna y tira la ficha de un jugador especifico.
# finished? # regresa true si un jugador conecta cuatro o si se acabo el tablero, false de otra manera.
# winner # regresa el nombre de la persona que gano el juego.

# Deberás implementar como primer paso la función de print_board.
# Como segundo paso deberás modelar el turno de cada participante drop_chip!.

# Tu programa deberá modelar como es que van cayendo las fichas. Utiliza estos métodos para mejorar la interfaz de tu programa, juega con ellos para entender como funcionan:

# Por último deberás de crear el método que revisará después de cada turno si es que existe un ganador, esto es si hay cuatro fichas juntas en cualquier dirección.

# Extra
# Ahora dale vida a tu juego y deja que dos usuarios puedan elegir las columnas y realmente jugar!!!

# Duerme la ejecución del programa, para retrasar un proceso. 
#sleep()


class ConectaCuatro

    def initialize
      @frojas = 21
      @fnegras = 21      
      @player = true
      @fila_accum = Array.new(7){0}
      @tablero = Array.new(6) { Array.new(7) }  
      @terminado = false    
      while @terminado == false        
        drop_chip!
        print_board
        sleep(1)
        @terminado = finished?
      end
    end

      # Clear the screen
    def clear_screen!
      print "\e[2J"
    end

    # Moves cursor to the top left of the terminal
    def move_to_home!
      print "\e[H"
    end

    # Use "reputs" to print over a previously printed line,
    # assuming the cursor is positioned appropriately.
    def reputs(str = '')
      puts "\e[0K" + str
    end

    def print_board
      clear_screen!
      move_to_home!
      p "CONECTA CUATRO JUEGO" + "    #{@fila_accum}   #{@terminado}"
      puts
      @tablero.each_index do |i|
          reputs(@tablero[i].to_s)
      end
    end

    def drop_chip!
      fila = 6
      columna = 0

        loop do 
        p columna = rand(@tablero[0].length) 
        break if @fila_accum[columna] < 6       
        end
        if @fila_accum[columna] < 6
          ficha = @player ? "R" : "N"   
          fila = @tablero.length - 1 - @fila_accum[columna]
          @tablero[fila][columna] = ficha 
          @fila_accum[columna] += 1
          @player = !@player
        end 
    end

    def finished?
    return true if @fila_accum.reduce(:+) == 42  
    false
    end

    def winner
    end

end

conecta4 = ConectaCuatro.new
