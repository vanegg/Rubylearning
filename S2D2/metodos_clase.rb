class RaceCar
  def initialize(brand, model)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @model = model
  end

  #método de clase
  def self.incrementar_velocidad
     puts "Incrementando velocidad"
  end

end

#instancias de RaceCar
speedy = RaceCar.new("toyota", "1987")
bolt = RaceCar.new("mercedez", "1997")
#método de clase
RaceCar.incrementar_velocidad