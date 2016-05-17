require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'
require_relative '../lib/flashcard'

class GuessTest < Minitest::Test
  attr_reader :card,
              :guess,
              :incorrect_guess
  def setup
    @card = Card.new("What is the address of Turing?","1510 Black Street")
    @guess = Guess.new("1510 Black Street", card)
    @incorrect_guess = Guess.new("2140 S Delaware St", card)
  end

  def test_if_card_can_guess
    assert_equal card, guess.card
  end

  def test_card_responce
    assert_equal "1510 Black Street", guess.response
  end

  def test_is_the_guess_correct
    assert guess.correct?
  end

  def test_if_feedback_works
    assert_equal "Correct!", guess.feedback
    assert_equal "Incorrect.", incorrect_guess.feedback
  end
end
