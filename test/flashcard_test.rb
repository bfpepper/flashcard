require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/flashcard'

class FlashcardTest < Minitest::Test
  attr_reader :card

  def setup
    @card = Card.new("What is the address of Turing?","1510 Blake Street")
  end
  def test_can_card_ask_questions
    assert_equal "What is the address of Turing?", card.question
  end

  def test_can_card_take_an_answer
    assert_equal "1510 Blake Street", card.answer
  end

end
