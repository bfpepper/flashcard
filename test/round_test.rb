require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/round'

class RoundTest < Minitest::Test
  attr_reader :card_1, :card_2, :deck, :round

  def setup
    @card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
    @card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
    @deck = Deck.new([card_1, card_2])
    @round = Round.new(deck)
  end

  def test_round_knows_its_deck
    assert_equal deck, round.deck
  end

  def test_round_knows_cards_in_its_deck
    assert_equal [card_1, card_2], round.deck.cards
  end

  def test_round_knows_guesses
    assert_equal [], round.guesses
  end

  def test_round_ids_current_card
    assert_equal card_1 ,round.current_card
  end

  def test_recording_user_guess
    assert_instance_of Guess, round.record_guess("May, 1963")
  end

  def test_guesses_empty_at_initialize
    assert_equal 0, round.guesses.count
  end

  def test_will_add_1_to_response
    round.record_guess("May, 1963")
    assert_equal 1, round.guesses.count
    round.record_guess("May, 1963")
    assert_equal 2, round.guesses.count
  end

  def test_feedback_is_correct
    round.record_guess("May, 1963")
    assert_equal "Correct! You're so smart.", round.guesses.first.feedback
  end

  def test_number_correct_working
    round.record_guess("May, 1963")
    assert_equal 1, round.number_correct
    round.record_guess("May, 1963")
    assert_equal 2, round.number_correct
  end

  def test_percent_correct
    round.record_guess("May, 1963")
    round.record_guess("May, 1966")
    round.number_correct
    assert_equal 50, round.percent_correct
  end
end
