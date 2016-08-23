class Vehicle

  def initialize
    @age = 0
  end

  def what_am_i?
    # Este método va a ser utilizado por varias clases y deberá regresar 
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
    self.class
  end

  def age!
    @age = rand(20)
  end

  def number_of_wheels
  end

  def color
  end

  def number_of_gears
  end

  def age
    @age
  end

end

class Motorized < Vehicle
  def has_motor
    true
  end

  def tank_size
    rand(10)
  end

  def refuel
  end
end

class Motorbike < Motorized
end

class Car < Motorized
end

class Bicycle < Vehicle
  def initialize(age)
    @age = age
  end
end

class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end