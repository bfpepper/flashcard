require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/flashcard'

class GuessTest < Minitest::Test
  attr_reader :card,
              :guess,
              :incorrect_guess
  def setup
    @card = Card.new("What is the address of Turing?","1510 Blake Street")
    @guess = Guess.new("1510 Blake Street", card)
    @incorrect_guess = Guess.new("2140 S Delaware St", card)
  end

  def test_if_card_can_guess
    assert_equal card, guess.card
  end

  def test_card_responce
    assert_equal "1510 Blake Street", guess.response
  end

  def test_is_the_guess_correct
    assert guess.correct?
  end

  def test_if_feedback_works
    assert_equal "Correct! You're so smart.", guess.feedback
    assert_equal "That is not correct.", incorrect_guess.feedback
  end
end
