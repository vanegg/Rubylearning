#Crea las siguientes clases: Animal, Fish, Mammal, Cat y Dog. 
#El objetivo de este ejercicio es relacionar todas estas clases con 
#herencia, de tal manera de colocar los comportamientos correctos en 
#las clases correctas.

#Define un comportamiento común que pueda ser heredado por todas las 
#clases. Crea una constante en las clases Fish, Dog y Cat que guarde 
#información de estas clases y las diferencie de las demás. Al final 
#muestra la información de estas constantes a través de comportamientos
#definidos de cada clase.

#Hay que crear las pruebas correspondientes.
#Recuerda que las pruebas deben regresar true.

class Animal
  @@num_animals ||= 0

  def initialize 
    @@num_animals += 1
  end

  def self.animals
    @@num_animals
  end

  def eat
    "I'm eating"
  end

  def sleep(hours)
    @hours = hours
    "I sleep #{@hours} hours"
  end

  def live(years)
    @years = years
    "I live #{@years} years"
  end
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

class Dog < Mammal
  AGE = 20
  def eat
    super + " all the time"
  end

  def live
   "I live #{AGE} years"
  end

end

class Fish < Animal
  AGE = 3
  def swim
    "I can swim"
  end

end

class Cat < Mammal
  AGE = 15

  def jump
    "I can jump"
  end
end

#test

fish = Fish.new
dog = Dog.new
cat = Cat.new

p dog.warm_blooded? == true
p dog.eat == "I'm eating all the time"
p dog.live == "I live 20 years"

p cat.warm_blooded? == true
p cat.jump == "I can jump"
p cat.eat == "I'm eating"

p fish.swim == "I can swim"
p fish.sleep(5) == "I sleep 5 hours"

p Animal.animals == 3
