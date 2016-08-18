#Sopa De Letras

#El Tablero
#Sigue la estructura que se te da para ir acostumbrándote a crear clases e ir organizando y encapsulando tu código. Utiliza estos tableros donde ya están distribuidas algunas palabras, solo hay que adecuarlos.
#Nuestros tableros serán de 8x5. 8 Filas y 5 Columnas.

# Palabras y Plantillas de Tableros
[["POEMA", "CANCION", "RONDAS", "RIMAS"],"XCXXXPOEMAXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]

class Board
# You should put here the given boards templates
 @@boards_templates = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"PCXXXOPEMAXAXXSXNXAAXCMXDXIXXNROXXOXNXXP"]


  def initialize
    @array = Array.new(8) {Array.new(5)}
    complete_board!
    create_board
  end

  def to_s
    "#{@array}"
  end

  def print_board
    (0...9).each {|row| p @array[row]}
  end

  def include?(word)
        fila_i = 0
        columna_i = 0
        letra = 0
        while fila_i < @array.length 
        if word[letra] == @array[fila_i][columna_i] 
            p "fila: #{fila_i}, columna: #{columna_i} letra #{word[letra]} " 
            search_around([fila_i,columna_i])
        end
            if columna_i + 1 < @array[fila_i].length
              columna_i += 1
            else
               columna_i = 0
              if fila_i + 1 < @array.length 
               fila_i +=1 
              else
                return "Se acabo el arreglo"
              end 
            end 
        
      end
      #   while (letra <= word.length  && fila_i != @array.length)
      #   p "fila: #{fila_i}, columna: #{columna_i}"
      #     if word[letra] == @array[fila_i][columna_i] 
      #       p "#{letra} letra encontrada : #{word[letra]}"
      #       letra += 1
      #     else
      #       letra = 0
      #     end
      #       if columna_i + 1 < @array[fila_i].length
      #         columna_i += 1
      #       else
      #         columna_i = 0
      #         if fila_i + 1 < @array.length 
      #         fila_i +=1 
      #         else
      #         return false  
      #         end           
      #       end
      #   end
      # p  letra == word.length ? true : false
  end

  def search_around(index)
    around = []
    fila = index[0]
    columna = index[1]

    if fila >= 1 
      if columna >= 1 
        fila -= 1
        columna -= 1      
        around << @array[fila][columna]
        columna = index[1]
        around << @array[fila][columna]

        if columna < @array[fila].length - 1
          columna += 1
          around << @array[fila][columna]
          fila = index[0]
          around << @array[fila][columna]

          if fila < @array.length - 1
            fila += 1
            around << @array[fila][columna]
            columna -= 1
            around << @array[fila][columna]
            columna -= 1
            around << @array[fila][columna]
            fila -= 1
            around << @array[fila][columna]            
          else
            around << nil
            around << nil
            around << nil
            fila -= 1
            around << @array[fila][columna]  
          end

        end
      else

      around << nil
    end
  end

    #if fila >= 1 && columna == 0

    p around
  end

  def founded_words
    encontradas = []
    @@boards_templates[0].each do |word|
      encontradas << word if include?(word) 
    end
    p "palabras encontradas: #{encontradas}"
  end

  private

    def complete_board!
      #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
      @complete_board = @@boards_templates.last.split("")
      @complete_board.map! {|char| char == "X" ? [*?A..?Z].sample : char}
    end

    def create_board
      k = 0
      for i in 0...@array.length
        for j in 0...@array[0].length
          @array[i][j] = @complete_board[k]
          k += 1
        end
      end
      @array
    end
end

board = Board.new
#puts board
board.print_board
p board.include?("POEMA")
#board.founded_words