require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/guess'
require './lib/flashcard'
require './lib/deck'
require './lib/round'
require './lib/card_generator'
require 'pry'

# card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
# card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
# card_3 = Card.new("What is the address of Turing?","1510 Blake Street")
# card_4 = Card.new("When was Fat Boy dropped?", "August 6th, 1945")
# card_5 = Card.new("Where is the Nurburgring?", "Nurburg, Germany")
# card_6 = Card.new("Where was Alan Turing working during World War Two?", "Bletchy Park, England")
cards = CardGenerator.new("card.text").cards
deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6])
round = Round.new(deck)

puts "Welcome! You are playing with #{deck.count} cards.
_________________________________________________________"
sleep(2)
round.deck.cards.each_with_index do |card, index|
  puts "This is card #{index + 1} out of #{deck.count}."
  puts card.question
  user_guess = gets.chomp
  guess = round.record_guess(user_guess, card)
  puts guess.feedback
end

puts "********************** Game over! **********************"
puts "Calculating your score."
sleep(2)
puts "You had #{round.number_correct} correct guesses out of #{deck.count} for a score of #{round.percent_correct}%."
