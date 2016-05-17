require './lib/sorting_cards'

class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    deck.cards[0]
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    @guesses.last
  end

end
