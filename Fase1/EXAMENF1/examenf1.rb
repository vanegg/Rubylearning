=begin
# Examen Fase 1

# Clases
# Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo. 
# Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información de cada tarjeta en una tabla. Utiliza las pruebas y la tabla que se presenta de ejemplo.

#Clase CreditCard
class CreditCard

  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status

  def initialize(name, number,expiration, cvc, status)
      @name = name
      @number = number
      @expiration = expiration
      @cvc = cvc
      @status = status
  end

  def self.print(cards)
    puts "|     name\t|     number \t|   expiration  |      cvc      |           status          |"
    puts "-" * 93
    cards.each do |card|
      puts "|   #{card.name}\t|    #{card.number}\t|      #{card.expiration}\t|      #{card.cvc}\t| #{card.status} |"
    end
  end

end

#Cinco instancias de CreditCard

card1 = CreditCard.new('Amex', 2345673444, '12/15', 2345, [234, 567, 456, 567, 344])
card2 = CreditCard.new('ScotiaBank', 2345673744, '12/16', 2845, [234, 345, 456, 567, 344])
card3 = CreditCard.new('Bancomer ', 2345673444, '12/15', 2645, [234, 345, 456, 567, 344])
card4 = CreditCard.new('Serfin', 2345473454, '12/20', 1345, [234, 345, 456, 567, 344])
card5 = CreditCard.new('BanCoppel', 2345373464, '12/18', 2445, [567, 345, 456, 567, 344])

#Array con cinco objetos de tarjetas de crédito
cards = []
cards << card1
cards << card2
cards << card3
cards << card4
cards << card5

#tests 

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

CreditCard.print(cards)

# Herencia
# Crea las clases Athlete, Runner, Swimmer y Cyclist, trata de relacionarlas a través de herencia. 
# Cada atleta podrá incrementar el total de la distancia recorrida y el tiempo total de ejercicio. 
# Al final cada tipo de atleta deberá mostrar la distancia total recorrida, el tiempo total y la velocidad obtenida. 
# Es importante considerar los casos cuando la distancia recorrida es igual a 0 y mayor que 0. 
# Todas las pruebas deberán pasar.

#Athlete class
class Athlete

  attr_reader  :speed_record
  attr_accessor :total_time, :total_distance

  def initialize(distance = 0, time = 0)
    @speed_record = 0.0
    @total_distance = distance    
    @total_time =  valid_time?(time) ? time : 0
    @speed_record = speed
  end

  #método para validar tiempo
  def valid_time?(time)
    time > 0
  end

  #método para hacer ejercicio
  def new_workout(distance, time)
    @total_distance += distance
    @total_time += time
  end

  #método para obtener velocidad del atleta
  def speed
    current_speed = @total_time == 0 ? 0 : @total_distance.fdiv(@total_time).round(2)
    @speed_record = current_speed if current_speed < @speed_record || @speed_record == 0
    current_speed
  end

  def statistics
    new_speed = speed
    "#{@total_distance} meters, time: #{@total_time} seconds, speed: #{new_speed} m/s"
  end

end

#Runner class

class Runner < Athlete

  def run
    "Ran " + statistics
  end

end

#Swimmer class
class Swimmer < Athlete 

  def swim
    "Swam " + statistics
  end

end

#Cyclist class
class Cyclist < Athlete

  def ride_bike
    "Rode " + statistics
  end

end


#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"
runner.new_workout(40, 5) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 60 meters, time: 12 seconds, speed: 5.0 m/s"

p runner.speed_record == 2.86
#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"

=end

# Race cars
# En una pista de carrera se realizan ciertas pruebas de velocidad a diferentes race cars. Se necesita medir para cada carro la velocidad promedio de acuerdo a cinco laptimes registrados. El lapdistance de la pista es de 100 metros. Esta distancia es importante que la consideres constante en el programa.

# Es necesario crear una clase RaceCar que contemple el nombre del carro y los tiempos de cada lap que ha registrado. Hay que considerar un método que retorne la velocidad promedio de cada carro, otro método que muestre el nivel de cada carro dependiendo de su velocidad (Principiante, Normal, Medio, Avanzado). Posteriormente, crear una clase Team que permita formar equipos de carros. Por último, crear un método que permita buscar si existe un determinado carro en un equipo. Todas las pruebas deben pasar.

# Extra - Crea un metodo en team que regrese el promedio de velocidad del equipo.

# Extra - Genera una tabla que muestre el coche y su nivel.

#RaceCar class
class RaceCar

  attr_reader :name, :level, :average_speed
  LAPDISTANCE = 100

  def initialize(name)
    @name = name
    get_laptimes
    @laptimes
    @average_time = @laptimes.reduce(:+).fdiv(@laptimes.length)
    level
  end

  def get_laptimes
    @laptimes = Array.new
    5.times { @laptimes << rand(7.4) }
  end

  #método para obtener velocidad promedio
  def average_speed
    @average_speed_value = (LAPDISTANCE.fdiv(@average_time)).round(2)
  end

  #método que muestra nivel de cada race car
  def level
    average_speed
    @level = ""
    case @average_speed_value
    when 0...20.0 then @level = "Principiante"
    when 20.0...45.0 then @level = "Normal"
    when 45.0...70.0 then @level = "Medio"
    else @level = "Avanzado"
    end
  end

end

#Team class
class Team 

  attr_accessor :team

  def initialize(team)
    @team = team
  end

  #método para agregar nuevo race car
  def add_car(car)
    @team << car
  end

  #método para calcular promedio de velocidad del equipo
  def average_speed_of_team
    @average_speed_value = 0
    @team.each do |car|
      @average_speed_value += car.average_speed
    end
    @average_speed_value /= @team.length
    @average_speed_value.round(2)
  end

end

#método para buscar race car
def search(name, team_cars)
   team_cars.team.find {|car| car.name == name} ? "#{name} is a racer" : "#{name} is not a racer" 
end

#método para generar la tabla
def show_table(team_cars)
  puts "    Name\t\t|    Level\t\t"
  puts "-" * 45
  team_cars.team.each do |car|
    puts "   #{car.name}\t\t|   #{car.level}\t"
  end
end

#método para mostrar nombre y nivel del race car
def show_car(car)
  puts "El raceCar: #{car.name} tiene un nivel #{car.level}"
end


#instancias de RaceCar
car1 = RaceCar.new("RayoMcQueen")
car2 = RaceCar.new("Tow Mater")
car3 = RaceCar.new("Chick Hicks")
car4 = RaceCar.new("Doc Hudson")
car5 = RaceCar.new("Sally")
car6 = RaceCar.new("Power")

#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

team_one.add_car(car6)
#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66 

#método para mostrar nombre y nivel del race car
show_car(car3)
show_table(team_one)