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
require 'logger'

class ConectaCuatro < Logger

  @logger = Logger.new(STDOUT)

    def initialize
      clear_screen!
      @tablero = Array.new(6) { Array.new(7){"   "} }
      @fila_accum = Array.new(7){0}
      @terminado = false
      @player = true
      @winner = ''
    end

  def start_game(manual = false)
      @manual = manual
      initialize
      print_board
      sleep(1) if @manual == false
      while @terminado == false
        drop_chip!
        print_board
        sleep(1) if @manual == false
        @terminado = finished?
      end
      winner
    end

    def print_board
      clear_screen!
      move_to_home!
    # @logger.info 'Moves rows:'
      puts "CONECTA CUATRO JUEGO        #{@fila_accum}"
      puts
      @tablero.each_index { |i| reputs(@tablero[i].to_s) }
    end

    def drop_chip!
      columna = find_empty_column
        if @fila_accum[columna] < 6
          @ficha = @player ? "R" : "N"
          fila = @tablero.length - 1 - @fila_accum[columna]
          @tablero[fila][columna] = "(" + @ficha + ")"
          @fila_accum[columna] += 1
          @player = !@player
        end 
    end

    def winner
      puts @winner.length > 0 ? "Ganador: Jugador #{@winner}" : "Juego terminado: ningún ganador"
    end

    private

      def find_empty_column
        columna = 7
        n_player = @player ? "ROJO" : "NEGRO"
        loop do
          if @manual
            loop do
              print "Jugador #{n_player}, elije una columna:"
              columna = gets.chomp.to_i - 1
              break if columna < 7 && columna >= 0
            end
          else
            columna = rand(@tablero[0].length)
          end
          break if @fila_accum[columna] < 6
        end
        columna
      end

      def finished?
        return true if win
        return true if @fila_accum.reduce(:+) == 42
        false
      end

      def win
        #HORIZONTAL
        @tablero.each do |row|
          @winner = 'NEGRO' if row.join.to_s.tr('()','').include? 'NNNN'
          @winner = 'ROJO' if row.join.to_s.tr('()','').include? 'RRRR'
        end

        return true if @winner.length > 0

        #VERTICAL
        @tablero.transpose.each do |column|
          @winner = 'NEGRO' if column.join.to_s.tr('()','').include? 'NNNN'
          @winner = 'ROJO' if column.join.to_s.tr('()','').include? 'RRRR'
        end

        return true if @winner.length > 0

        #DIAGONAL
        arr = Array.new
        arr[0] = @tablero
        arr[1] = @tablero.reverse.transpose
        (0...2).each do |n|
          new_array = Array.new()
          for i in 0...6
            filas = i
            columnas = 0
            while columnas < arr[n][0].length && filas < arr[n].length
             new_array << "#{arr[n][filas][columnas]}"
              filas += 1
              columnas += 1
            end
            new_array << "P"
          end
          for i in 1...7
            filas = 0
            columnas = i
            while columnas < arr[n][0].length && filas < arr[n].length
              new_array << "#{arr[n][filas][columnas]}"
             new_array.join
              filas += 1
              columnas += 1

              end
            new_array << "P"
          end
          @winner = 'NEGRO' if new_array.join.to_s.tr('()','').include? 'NNNN'
          @winner = 'ROJO' if new_array.join.to_s.tr('()','').include? 'RRRR'
        end
        @winner.length > 0 ? true : false
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

end

conecta4 = ConectaCuatro.new
#Random Game
conecta4.start_game
#Manual Game
conecta4.start_game(true)