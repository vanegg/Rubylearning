class View

  def initialize
    puts "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta."
    puts "Listo?  Arranca el juego!"
  end

  def correct(answer)
    puts answer ? "Correcto" : "Incorrecto!"
  end

  def score(correct,incorrect)
    puts 'Acabaste:'
    puts "Tuviste #{correct} Correctas y #{incorrect} Incorrectas."
  end

  def show_card(card, answers)    
    puts card.question
    answers.each_index do |i|
      puts "#{i + 1}. #{answers[i]}"
    end
    print "Intento: "
  end

  def added
    puts "Carta agregada"
  end

  def choose_category
    puts "Las categorías son:"
    puts "Arte"
    puts "General"
    puts "TV"
    print "Escoge la categoría que deseas: "
  end

end