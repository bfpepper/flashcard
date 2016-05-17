require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/flashcard'

class FlashcardTest < Minitest::Test
  def test_can_card_ask_questions
    card = Card.new("What is the address of Turing?","1510 Black Street")
    assert_equal "What is the address of Turing?", card.question
  end

  def test_can_card_take_an_answer
    card = Card.new("What is the address of Turing?","1510 Black Street")
    assert_equal "1510 Black Street", card.answer
  end

end
