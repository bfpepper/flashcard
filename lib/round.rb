require './lib/deck'

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

  def record_guess(response, card=current_card)
    @guesses << Guess.new(response, card)
      @number_correct += 1 if guesses.last.correct?
    @guesses.last
  end

  def percent_correct
    ((number_correct / @guesses.count.to_f) * 100).to_i
  end

end
