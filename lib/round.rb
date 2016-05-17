require './lib/sorting_cards'

class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def guesses
    []
  end

  def current_card
    @deck.cards
  end
end
