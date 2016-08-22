=begin
Existen 4 tipos de self: el self en el scope global regresa main, 
que es el tip-level namespace.
El self dentro de una clase regresa el nombre de la clase
El self dentro de un método de instancia regresa el nombre del objeto: 
su clase y su representacion de id
El ultimo self es dentro de un método de clase,
regresa el nombre de la clase que lo contiene.
=end

puts "self es igual a: #{self}"

class DummyClass

  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"

    def intance_method
        puts "Dentro de un método de instancia"
        puts "En este contexto self es igual a: #{self}"
    end

    def self.class_method
        puts "Dentro de un método de clase"
        puts "En este contexto self es igual a: #{self}"
    end
end

dummy_class = DummyClass.new()
puts dummy_class.intance_method
puts DummyClass.class_method   