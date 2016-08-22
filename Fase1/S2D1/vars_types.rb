local_var = "this is my local var"
$global_var = "This is a global variable"
CONSTANT = 3.1416 

  def global_var
    $global_var
  end
  def global_var=(value)
    $global_var = value
  end

  def constant
    CONSTANT
  end
  #NO SE PUEDE MODIFICAR UNA CONSTANTE
  # def constant=(value)
  #   CONSTANT = value
  # end

class DummyClass
  @@class_variable = "This is a class variable"

  def initialize
    @instance_var
  end

  def return_my_local_var
    @instance_var = "hola"
  end

  # Este es un getter
  def instance_var
    @instance_var
  end

  # Este es un setter
  def instance_var=(value)
    @instance_var = value
  end

  def class_variable
    @@class_variable
  end

  # Este es un setter
  def class_variable=(value)
    @@class_variable = value
  end

  def global_var
    $global_var
  end

  def global_var=(value)
    $global_var = value
  end

  def constant
    CONSTANT
  end

end

dummy = DummyClass.new
puts dummy.return_my_local_var

dummy_class = DummyClass.new

p dummy_class.instance_var=("Bar")
p dummy_class.instance_var   =    "Baz"

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

p dummy_1.class_variable
p dummy_2.class_variable

p dummy_1.class_variable = "New value for the class variable"
p dummy_1.class_variable
p dummy_2.class_variable

p global_var == "This is a global variable"
p dummy.global_var == "This is a global variable"
dummy_1.global_var = "New global variable"
p dummy_2.global_var == "New global variable"
p global_var == "New global variable"
p constant == dummy_1.constant