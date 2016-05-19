require './lib/guess'
require './lib/flashcard'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

cards = CardGenerator.new("card.text").cards
deck = Deck.new(cards)
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
