#Crea la clase Person y define el método age que llame a un método para 
#calcular la edad de la persona. Es necesario usar un método nativo de 
#ruby que te ayude a obtener el año actual.
require 'date'

class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def age
    years = years_old
    "#{@name} is #{years} years old."
  end

  private
  def years_old
    Date.today.year - @age
  end
end

carlos = Person.new("Carlos", 1986)
martha = Person.new("Martha", 1990)


#test
p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true

#p carlos.years_old
#=>private method `years_old'...(NoMethodError)