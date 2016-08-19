#Sopa De Letras

#El Tablero
#Sigue la estructura que se te da para ir acostumbrándote a crear clases e ir organizando y encapsulando tu código. Utiliza estos tableros donde ya están distribuidas algunas palabras, solo hay que adecuarlos.
#Nuestros tableros serán de 8x5. 8 Filas y 5 Columnas.

# Palabras y Plantillas de Tableros
[["POEMA", "CANCION", "RONDAS", "RIMAS"],"MPZAAMOZAAMEZAAMMZAAMAZAAMNZAAMNZAAMNZAA"]
[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]

class Board
# You should put here the given boards templates
 #@@boards_templates = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
 #@@boards_templates = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
 @@boards_templates = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]

  def initialize
    @array = Array.new(8) {Array.new(5)}
    complete_board!
    create_board
  end

  def to_s
    "#{@array}"
  end

  def print_board
    (0...8).each {|row| p @array[row]}
  end

  def include_?(word)
  	new_array = []

  	#HORIZONTALES
  	@array.map do |row|
  		new_array << row.join
  	end
  	new_array.each do |palabra|
  	return true if word == palabra  		
  	end
  	new_array.each do |palabra|
  	return true if	word.reverse == palabra  		
  	end

  	#VERTICALES
  	@array.transpose.map do |row|
  	new_array << row.join
  	end
  	new_array.each do |palabra|
  	return true if palabra.include? word 		
  	end
  	new_array.each do |palabra|
  	return true if palabra.include? word.reverse		
  	end

  	#DIAGONALES
  	filas = 0
  	columnas = 0
  	arr = Array.new
  	arr[0] = @array
  	arr[1] = @array.reverse.transpose
  	(0...2).each do |n|
  	 	new_array = Array.new()
  	for i in 0...8  		
  		filas = 0 + i
  		columnas = 0
  		while columnas < arr[n][0].length && filas < arr[n].length
  			 new_array << "#{arr[n][filas][columnas]}" 
  			filas += 1
  			columnas += 1
  		end
  	end
  	  for i in 0...4  		
  		filas = 0
  		columnas = 1 + i
  		while columnas < arr[n][0].length && filas < arr[n].length
  			 new_array << "#{arr[n][filas][columnas]}" 
  			 filas += 1
  			 columnas += 1
  		end  	
  	end
  	return true if new_array.join.include? word
  	return true if new_array.join.include? word.reverse
  	end

 
  	# filas = 0
  	# columnas = 0
  	# new_array = Array.new()
  	# trans_array = @array.reverse.transpose
  	# for i in 0...8  		
  	# 	filas = 0 + i
  	# 	columnas = 0
  	# 	while columnas < trans_array[0].length && filas < trans_array.length
  	# 		 new_array << "#{trans_array[filas][columnas]}" 
  	# 		filas += 1
  	# 		columnas += 1
  	# 	end
  	# end
  	#   for i in 0...4  		
  	# 	filas = 0
  	# 	columnas = 1 + i
  	# 	while columnas < trans_array[0].length && filas < trans_array.length
  	# 		 new_array << "#{trans_array[filas][columnas]}" 
  	# 		 filas += 1
  	# 		 columnas += 1
  	# 	end  	
  	# end
  	# return true if new_array.join.include? word
  	# return true if new_array.join.include? word.reverse
  	false
end

  	# def include?(word)
   #       @fila_i = @columna_i = letra = 0
   #      while @fila_i < @array.length 
   #      	if word[letra] == @array[@fila_i][@columna_i] 
	  #            while letra <= word.length	 
	  #            	search_around([@fila_i,@columna_i])	            
	                     
	  #             letra += 1
	  #             @around.each do |elem|	   
	  #           	p " #{word[letra]} e: #{elem}"        	
	  #           	 if elem == word[letra] 
	  #           	 	direction(@around.index(elem))	            	 	 	
	  #           	 	p "fila: #{@fila_i}, columna: #{@columna_i} letra #{word[letra]}"  
	  #           	 	letra += 1   	 	 	            	 	
	  #           		search_around([@fila_i,@columna_i])
	  #           	 end

	  #             end

	  #       	end
   #      	end
   #          if @columna_i + 1 < @array[@fila_i].length
   #            @columna_i += 1
   #          else
   #             @columna_i = 0
   #              @fila_i += 1  
   #          end         
   #    	end
  	# end



  	def founded_words
	    encontradas = []
	    @@boards_templates[0].each do |word|
	      encontradas << word if include_?(word) 
	    end
	    p "palabras encontradas: #{encontradas}"
	 end

private

  	#  def full_around(valid_array, filas, columnas)
	  # 	fila = filas
	  # 	columna = columnas
	  # 	  @around[0] = valid_array[0] ? @array[fila - 1][columna - 1] : "0"
	  # 	  @around[1] = valid_array[1] ? @array[fila - 1][columna] : "0"
	  #     @around[2] = valid_array[2] ? @array[fila - 1][columna + 1] : "0"
	  #     @around[3] = valid_array[3] ? @array[fila][columna + 1] : "0"
	  #     @around[4] = valid_array[4] ? @array[fila + 1][columna + 1] : "0"
	  #     @around[5] = valid_array[5] ? @array[fila + 1][columna] : "0"
	  #     @around[6] = valid_array[6] ? @array[fila + 1][columna - 1] : "0"
	  #     @around[7] = valid_array[7] ? @array[fila][columna - 1] : "0"
	  #     p @around
	  # end

	  # def search_around(index)
	  #   @around = Array.new
	  #   fila = index[0]
	  #   columna = index[1]
	  #   if fila < 1
	  #     @around[0] = @around[1] = @around[2] = false
	  #     @around[6] = @around[7] =  columna < 1 ? false : true
	  #     @around[3] = @around[4] = @around[5] = true
	  #     @around[3] = @around[4] = false if columna == @array[0].length - 1
	  #   elsif fila == (@array.length - 1)
	  #   	@around[0] = @around[7] = columna < 1 ? false : true
	  #   	@around[1] = @around[2] = @around[3] = true
	  #   	@around[4] = @around[5] = @around[6] = false
	  #   	@around[2] = @around[3] = false if columna == (@array[fila].length - 1)
	  #   else
	  #     @around[0] = @around[6] = @around[7] = columna < 1 ? false : true
	  #     @around[1] = @around[2] = @around[3] = @around[4] = @around[5] = true
	  #     @around[2] = @around[3] = @around[4] = false if columna == (@array[fila].length - 1)
	  #   end
	  #    full_around(@around, index[0], index[1])
	  # end

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


board = Board.new()
#puts board
board.print_board
p board.include_?("POEMA")
p board.founded_words