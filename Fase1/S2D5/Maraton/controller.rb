require_relative 'model.rb'
require_relative 'view.rb'
require 'faker' 

class Maraton

    NUM_ANSWERS = 3

  def initialize
    @view = View.new()
    @cards = Cards.new()
    @correct_ans = 0
    @incorrect_ans = 0
    @answers_array = []
    ARGV == [] ? game : add_question(ARGV[0], ARGV[1], ARGV[2], ARGV[3])
  end

  private

    def game
      @view.choose_category
      deck = gets.chomp
      @cards.read_cards(deck)
      while @cards.length_cards > 0
        struct_answer
      end
      @view.score(@correct_ans,@incorrect_ans)
    end

    def add_question(deck, question, ans, n_ans)
      question_added = Card.new(deck, question, ans, n_ans)
      @cards.add_card(question_added)
      @view.added
    end

    def struct_answer
      msg = false
        @card = @cards.pick_card
        fake_answers
        @view.show_card(@card, @answers_array)
        user_answer = gets.chomp
         if @card.n_answer.join('').to_i == user_answer.to_i 
          @correct_ans += 1
           msg = true
         else
           @incorrect_ans += 1
         end
        @view.correct(msg)
    end

    def fake_answers
      (0...NUM_ANSWERS).each do |n|
        if @card.n_answer.join('').to_i != n + 1
        @answers_array[n] = Faker::Book.title 
        else
        @answers_array[n] = @card.answer.join('')
        end
      end
    end

end

Maraton.new()