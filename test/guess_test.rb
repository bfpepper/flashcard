require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'
require_relative '../lib/flashcard'

class GuessTest < Minitest::Test

  def test_if_card_can_guess
    card = Card.new("What is the address of Turing?","1510 Black Street")
    guess = Guess.new("1510 Black Street", card)
    assert_equal card, guess.card
  end

  def test_card_responce
    card = Card.new("What is the address of Turing?","1510 Black Street")
    guess = Guess.new("1510 Black Street", card)
    assert_equal "1510 Black Street", guess.response
  end

  def test_is_the_guess_correct
    card = Card.new("What is the address of Turing?","1510 Black Street")
    guess = Guess.new("1510 Black Street", card)
    assert_equal "Correct!", guess.correct?
    guess = Guess.new("2140 S Delaware St", card)
    refute_equal "Correct!", guess.correct?
  end
end
