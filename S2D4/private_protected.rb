#Define los métodos private y protected para calcular la edad del gato,
#así como también agrega el código que se necesita para que la prueba
#correspondiente sea true. Revisa la documentación correspondiente.

class Cat
  CAT_YEARS = 7

  attr_accessor :age

  def initialize(age)
    @age = age
  end

  def es_mayor_que?(name)
    get_age(name)                   #Llama un metodo private
    cat_age(@age) > cat_age(@age2)  #Llama un metodo protected
  end

  protected
    def cat_age(age)
     age * CAT_YEARS
    end

  private
    def get_age(obj)
     @age2 = obj.age
    end

end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false
#=>true
