# superclase 

class Mammal
  def breath
    puts 'inspirar, espirar'
  end
end

# el símbolo < indica que 'Cat' es una subclase de Mammal

class Cat < Mammal
  def meow
    puts 'Miaaaaaaaaaaau'
  end
end

# el símbolo < indica que 'Dog' es una subclase de Mammal

class Dog < Mammal
  def bark
    puts 'Guauu Guauu'
  end
end

catty = Cat.new
doggy = Dog.new
catty.breath
catty.meow
doggy.breath
doggy.bark