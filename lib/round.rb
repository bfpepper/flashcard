require './lib/sorting_cards'

class Round
  attr_reader :deck,
              :guesses,
              :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  def current_card
    deck.cards[0]
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
      @number_correct += 1 if guesses.last.correct?
    @guesses.last
  end

  # def number_correct
  #   if guesses.last.correct?
  #     @total_correct += 1
  #   end
  # end

  def percent_correct
    ((number_correct / @guesses.count.to_f) * 100).to_i
  end

end
