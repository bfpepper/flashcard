require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/deck'

class SortingTest < Minitest::Test
  attr_reader :card_1, :card_2, :card_3, :deck

  def setup
    @card_1 = Card.new("What is the address of Turing?","1510 Black Street")
    @card_2 = Card.new("When was Fat Boy dropped?", "August 6th, 1945")
    @card_3 = Card.new("Where is the Nurburgring?", "Nurburg, Germany")
    @deck = Deck.new([card_1, card_2, card_3])
  end

  def test_sorting_cards
    assert_equal [card_1, card_2, card_3], deck.cards
    assert_equal Array, deck.cards.class
    assert_equal 3, deck.count
  end
end
