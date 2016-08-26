require 'csv'

class Card
  attr_accessor :question, :answer, :deck, :n_answer

  def initialize (deck, question, answer, n_answer)
    @question = question
    @answer = answer
    @deck = deck.downcase
    @n_answer = n_answer
  end
end

class Cards

  def initialize
    @file = 'questions.csv'
  end

  def add_card(new_question)
    CSV.open(@file, "a+") do |csv|
      csv << [new_question.deck]
      csv << [new_question.question]
      csv << [new_question.answer]
      csv << [new_question.n_answer]
      csv << ["\n"]
    end    
  end

  def read_cards(deck)
    new_cards = []
    @cards = []
    CSV.foreach(@file) do |card|
      new_cards << card
    end

    new_cards.each_slice(5) do |card| 
      @cards << Card.new(card[0].join(''), card[1], card[2], card[3]) if card[0].join('') == deck.downcase
    end  
  end

  def pick_card
    index = rand(length_cards)
    picked = @cards[index]
    @cards.delete_at(index)
    picked
  end

  def length_cards
    @cards.length.to_i
  end

end