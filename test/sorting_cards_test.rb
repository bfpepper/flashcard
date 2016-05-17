require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'
require_relative '../lib/flashcard'
require_relative '../lib/sorting_cards'


class SortingTest < Minitest::Test

  def test_sorting_cards
    card_1 = Card.new("What is the address of Turing?","1510 Black Street")
    card_2 = Card.new("When was Fat Boy dropped?", "August 6th, 1945")
    card_3 = Card.new("Where is the Nurburgring?", "Nurburg, Germany")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
    assert_equal Array, deck.cards.class
    assert_equal 3, deck.count
  end
end
