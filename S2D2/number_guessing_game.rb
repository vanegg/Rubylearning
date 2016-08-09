# Crea la clase NumberGuessingGame. 
#Al crear una instancia de la clase (NumberGuessingGame.new) el programa asigna 
#un número aleatorio entre 0 y 9, el cual deberemos adivinar después con el método guess.

# El método NumberGuessingGame#guess recibe un entero y regresa:

# "Too low", si el número es más pequeño que el número aleatorio que asignó el programa.
# "You got it!", si el número es el mismo que el número aleatorio.
# "Too high", si el número es más grande que el número aleatorio que asignó el programa.

class NumberGuessingGame
  def initialize
   @num = Random.new
   @num = @num.rand(0..9)
  # @num = 6 #para las pruebas iniciales
  end

  def guess
    loop do
      print "Indica el num que crees: "
      @num_guess = gets.chomp.to_i
      if @num_guess < @num 
       p "Too low" 
      elsif @num_guess > @num 
       p "Too high" 
      else
       p "You got it!"
      end
    break if @num_guess == @num
    end
    print "¿Quieres comenzar otro juego(J)? (Para salir presiona cualquier otra letra): "
    action = gets.chomp.upcase
    if action == "J"
      NumberGuessingGame.new.guess
    end 
  end
end

# Pruebas

 game = NumberGuessingGame.new
 p game.guess

 # p game.guess(5) == "Too low"

 # p game.guess(8) == "Too high"

 # p game.guess(7) == "Too high"

 # p game.guess(6) == "You got it!"
# Ten en cuenta que cada que ejecutes el programa te va a mostrar algo diferente 
#por que el número que tienes que adivinar cambia cada vez.

# Extra
# Haz que tu programa sea interactivo. El usuario debe poder introducir los números
# que recibe el método guess. También podrá iniciar un nuevo juego o salir.


