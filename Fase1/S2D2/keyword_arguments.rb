# Sin keyword arguments
class Dog
  def initialize(name, age, vaccinated)
    
  end
end

dog = Dog.new("Fido", 3, false)
# BIEN
# dog = Dog.new("Fido", false, 3)
# MAL!

# Con keyword arguments
class Dog
  def initialize(name:, age:, vaccinated:)
    
  end
end

# Ambos BIEN
dog = Dog.new(name: "Fido", age: 3, vaccinated: false)
dog = Dog.new(name: "Fido", vaccinated: false, age: 3)

# Actividades
# Convierte el siguiente código a que utilice la sintaxis de keyword arguments.
# Encontrarás que a algunos argumentos se les asigna un valor por default.

class ContactInformation

  def initialize(nombre:, telefono:, celular:, email:, referencia:, colonia:, municipio:, ciudad:, estado:, codigo_postal:, calle:, num_ext:, num_int: nil, pais: "México", mayor_de_edad: false)
    @nombre = nombre
    @telefono = telefono
    @celular = celular
    @email = email
    @referencia = referencia
    @colonia = colonia
    @municipio = municipio
    @ciudad = ciudad
    @estado = estado
    @codigo_postal = codigo_postal
    @calle = calle
    @num_ext = num_ext
    @num_int = num_int
    @pais = pais
    @mayor_de_edad = mayor_de_edad
  end

  def to_s
    "Nombre: #{@nombre}#{mayor_de_edad}, telefono: (#{@telefono}), celular: (#{@celular}), email: <#{@email}> \n Dirección: #{@calle} #{numero}, #{@colonia}, #{@municipio}, #{@ciudad}, #{@estado}, #{@codigo_postal}, #{@pais} \n Referencia: #{@referencia}"
  end

  def numero
    "#{@num_ext}#{"-#{@num_int}" if @num_int}"
  end

  def mayor_de_edad
    unless @mayor_de_edad
      "*"
    end
  end
end


puts ContactInformation.new(nombre: "Juan Perez Jr", telefono: "3891089238", celular: "04455832189491", email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio: "Benito Juárez", ciudad: "México", estado: "Distrito Federal", codigo_postal: "07500", calle: "Chapultepec", num_ext: "500", num_int: "B")

puts ContactInformation.new(nombre: "Juan Perez", telefono: "3891089238", celular: "04455832189491",  email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio:  "Benito Juárez", ciudad: "México",  estado: "Distrito Federal", codigo_postal: "07500", calle: "Chapultepec", num_ext: "500", num_int: nil, pais: "México", mayor_de_edad: true)