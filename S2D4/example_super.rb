#Agrega el código necesario en la superclase y en las subclases 
#para hacer pasar las pruebas correspondientes.
#Revisa documentación acerca del uso de super.

class People
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Man < People

  attr_reader :color
  def initialize(name)
    super
    @color = @name
  end

end
class Woman < People

  attr_writer :color
  def initialize(name)
    super
  end

end

#test
man = Man.new("brown")
woman = Woman.new("leyla")

p man.name == "brown"
#=>true
p man.color == "brown"
#=>true

#p man.color = "red"
#=>...undefined method `color='... 
p woman.name == "leyla"
#=>true
woman.name = "Karla"
p woman.name == "Karla"
#=>true

#p woman.color == "leyla"
#=>...undefined method `color'... 