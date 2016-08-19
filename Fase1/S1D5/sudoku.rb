#Actividades
#El objetivo de este ejercicio es crear un programa que resuelva un Sudoku. Tendrás un string que representará el Sudoku y con el deberás representar el tablero e ir resolviendolo de manera lógica.

class Sudoku

  NUMBERS = [1,2,3,4,5,6,7,8,9]

  def initialize(tablero)
    @row_arr = []
    @colum_arr = []
    @box_arr =[]

    @i = 0
    @j = 0
    @k = 0

    @tablero = tablero
    @zeros = @tablero.count('0')
    create_board
    solve!
  end

  def board    
    (0...9).each do |i|
      p @array[i] 
    end
    puts
  end

  def create_board
    @array = []
    k= 0
    (0...9).each do |j|
      temp = []
      (0...9).each do |i|
        temp << @tablero[k + i].to_i
      end
      k += 9
      @array << temp
    end
    @array
  end

  def zero?(i,j)
    return @array[i][j] == 0 ? true : false
  end

  def solve!
    @i = 0
    @j = 0
    @k = 0
    zero = false
    while @zeros > 0
      (0...9).each do |l|
        (0...9).each do |m|
          zero = zero?(l,m)
          if zero == true
            @i = l
            @j = m
            define_box        
            nums = [search_row, search_colum, search_box]
            missed_numbers = nums[0] & nums[1] & nums[2]
            if can_set?(missed_numbers) 
              @array[@i][@j] = missed_numbers[0]
              @zeros -= 1           
            end
          end
        end
      end
    end
  end

  def can_set?(array)
    array.length == 1 ? true : false
  end

  def define_box
    @k = 0 if @j < 3 && @i < 3
    @k = 1 if @j > 2 && @j < 6 && @i < 3 
    @k = 2 if @j > 5 && @j < 9 && @i < 3 

    @k = 3 if @j < 3 && @i < 6 && @i > 2 
    @k = 4 if @j > 2 && @j < 6 && @i < 6 && @i > 2 
    @k = 5 if @j > 5 && @j < 9 && @i < 6 && @i > 2 

    @k = 6 if @j < 3 && @i < 9 && @i > 5 
    @k = 7 if @j > 2 && @j < 6 && @i < 9 && @i > 5
    @k = 8 if @j > 5 && @j < 9 && @i < 9 && @i > 5    
  end

  def search_row
    @row_arr = NUMBERS - @array[@i]
  end

  def search_colum
    @colum_arr = NUMBERS - @array.transpose[@j]
  end

  def search_box
    temp = []
    inf_i = inf_j = sup_i = sup_j = 0
    case @k
      when 0 then inf_i = 0; sup_i = 2; inf_j = 0; sup_j = 2
      when 1 then inf_i = 0; sup_i = 2; inf_j = 3; sup_j = 5  
      when 2 then inf_i = 0; sup_i = 2; inf_j = 6; sup_j = 8     
      when 3 then inf_i = 3; sup_i = 5; inf_j = 0; sup_j = 2  
      when 4 then inf_i = 3; sup_i = 5; inf_j = 3; sup_j = 5  
      when 5 then inf_i = 3; sup_i = 5; inf_j = 6; sup_j = 8  
      when 6 then inf_i = 6; sup_i = 8; inf_j = 0; sup_j = 2  
      when 7 then inf_i = 6; sup_i = 8; inf_j = 3; sup_j = 5  
      when 8 then inf_i = 6; sup_i = 8; inf_j = 6; sup_j = 8  
    end  
      (inf_i..sup_i).each do |i|
        (inf_j..sup_j).each do |j|
          temp << @array[i][j]
        end
      end
    return @box_arr = NUMBERS - temp
  end

end

 game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')
 game.solve!
 game.board

 game1 = Sudoku.new('609238745274561398853947621486352179792614583531879264945723816328196457167485932')
 game1.solve!
 game1.board

 game2 = Sudoku.new('308290400020800730050000002090304126410080073635102040500000090089003060003067801')
 game2.solve!
 game2.board

 # game3 = Sudoku.new('000716000030050020000000000700000006120030045500000001000000000090040080000182000') #NOFunciona con esa logica
 # game3.solve!
 # game3.board
