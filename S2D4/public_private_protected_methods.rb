class Cat
  CAT_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age 
  end

  def cat_years
    @age * CAT_YEARS
  end

  private

  def human_years
    @age / CAT_YEARS
  end

end

katty = Cat.new("Katty", 2)
p katty.cat_years == 14
#=>true
#p katty.human_years
#=>...private method `human_years' called for #<Cat:0x872727c @name="Katty", @age=14> (NoMethodError)

class Vitamin
  def a_public_method
    "Will this work? " + a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

vitamin = Vitamin.new
p vitamin.a_public_method == "Will this work? Yes, I'm protected!"
#=>true

vitamin.a_protected_method
#=>...protected method `a_protected_method' called for #<Vitamin:0x833a574> (NoMethodError)