require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/flashcard'
require './lib/sorting_cards'
require './lib/round'
require 'pry'


class RoundTest < Minitest::Test

  def test_round_knows_its_deck
    card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
    card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_round_knows_cards_in_its_deck
    card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
    card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [card_1, card_2], round.deck.cards
  end

  def test_round_knows_guesses
    card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
    card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_round_ids_current_card
    card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
    card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1 ,round.current_card
  end

  def test_recording_user_guess
    card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
    card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Guess, round.record_guess("May, 1963")
  end
end
