#Usa la herencia para refactorizar el siguiente código...

class Animal
  def speak
    "Hello!"
  end
end

class Dog < Animal
end

class Cat < Animal
end


drako = Dog.new
peto = Cat.new
p drako.speak == "Hello!"          
# => true
p peto.speak == "Hello!"           
# => true