# abecedario = ('A'..'Z').last(20)
# p que_sera = Array.new(3) { abecedario.pop(2) }

#Daremos un nuevo paso en nuestro juego de Gato. Ya teniendo el tablero y sabiendo 
#crearlo ahora queremos crear un método que cree tableros, pero que cada vez estos sean diferentes.

#CON .sample
p array = Array.new(3){Array.new(3){["X","O"].sample}}

def gato(first = nil)
  first ||= random_X0
  numX = 0
  numO = 0
  tablero = Array.new(3) { Array.new(3) }
  value = first
  until numO + numX == 9
    set_value(value,tablero)
    if value == "X"
      numX += 1
      value = "O"
    else
      numO += 1
      value = "X"
    end
  end
  tablero
  end 

def random_X0
  r = Random.new
  r.rand(0..1) == 1 ? "X" : "O"
end

def random_box
  box = Array.new
  r = Random.new
  box[0] = r.rand(0...3)
  box[1] = r.rand(0...3)
  box
end

def set_value(value, tablero)
    emptybox = false
  loop do
    box = random_box
    if tablero[box[0]][box[1]] == nil
      emptybox = true
      tablero[box[0]][box[1]] = value
    end    
  break if emptybox == true
  end
end


tablero = gato
  p tablero[0]
  p tablero[1]
  p tablero[2]

#Inicia con "X"
puts
tablero1 = gato("X")
  p tablero1[0]
  p tablero1[1]
  p tablero1[2]

#Inicia con "O"
puts
tablero2 = gato("O")
  p tablero2[0]
  p tablero2[1]
  p tablero2[2]