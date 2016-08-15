#Copia este código en un archivo y arregla el desastre que tiene.

class Person

  LIFE_stage = {childhood: 12, teenager: 19, adult: 50}
  LEGAL_AGE = 18

  attr_accessor :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def life_stage
    if @age < LIFE_stage[:childhood]
      :childhood
    elsif @age < LIFE_stage[:teenager]
      :teenager
    elsif @age < LIFE_stage[:adult]
      :adult
    else
      :elder
    end
  end

  def legal?
    @age >= LEGAL_AGE
  end

end


# Esta parte del código son pruebas. 
# Antes y después deben de imprimir puros "true"
fernando = Person.new("Fernando", 5)
juan = Person.new("Juan", 45)
laura = Person.new("Laura", 87)
andrea = Person.new("Andrea", 13)

puts fernando.legal? == false
puts juan.legal? == true
puts laura.legal? == true
puts andrea.legal? == false

puts fernando.life_stage == :childhood
puts juan.life_stage == :adult
puts laura.life_stage == :elder
puts andrea.life_stage == :teenager

puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"