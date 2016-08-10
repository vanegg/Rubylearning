#Crea la clase Computer y agrega un método para cambiar 
#y ver el color de la computadora.

# class Computer

#   attr_accessor :color

#   def initialize (color)
#     @color = color
#   end
# end

# mac = Computer.new("Pink")
# #test
# mac.color = "Platinum"
# p mac.color == "Platinum"


#Crea la clase "Computer" y agrega un método que permita 
#solamente ver y no modificar el procesador de la computadora.

class Computer

  attr_reader :processor

  def initialize (processor)
    @processor = processor
  end
end

mac = Computer.new("Intel")
#test
p mac.processor == "Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...