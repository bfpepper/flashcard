require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/guess'
require './lib/flashcard'
require './lib/deck'
require './lib/round'
require './lib/card_generator'
require 'pry'


# Test 1: when cg is created it is assocciated with a file
# Test 3: verify that the cards are stored in an array
# Test 2: verify that the cards in the arry are tied to a class
# Test 4: a method called cards is available that will return the array of cards


class CardGeneratorTest < Minitest::Test
  attr_reader :filename, :card_generator

  def setup
    @filename = "./card.txt"
    @card_generator = CardGenerator.new(filename)
  end

  def test_it_is_associated_with_a_file_when_created
    assert_equal filename, card_generator.filename
  end

  def test_cards_are_stored_in_an_array
    assert_equal Array, card_generator.cards.class
  end

  def test_cards_in_the_array_are_tied_to_card_class
    assert_equal Card, card_generator.cards[0].class
  end

  def test_card_count_in_new_deck_is_6
    assert_equal 6, card_generator.cards.count
  end

  def test_the_correct_question_is_posed
    assert_equal "When did Lamborghini become a business?", card_generator.cards[0].question
  end

  def this_is_the_answer_i_expect
    assert_equal "May 1963", card_generator.cards[0].answer
  end
end
