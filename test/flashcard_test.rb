require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/guess'
require './lib/flashcard'
require './lib/deck'
require './lib/round'
require './lib/card_generator'
require 'pry'

class FlashcardTest < Minitest::Test
  def test_can_card_ask_questions
    card = Card.new("What is the address of Turing?","1510 Blake Street")
    assert_equal "What is the address of Turing?", card.question
  end

  def test_can_card_take_an_answer
    card = Card.new("What is the address of Turing?","1510 Blake Street")
    assert_equal "1510 Blake Street", card.answer
  end

end
