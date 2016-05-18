require "./lib/flashcard"
require "./lib/sorting_cards"
require "./lib/guess"
require "./lib/round"

card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
card_3 = Card.new("What is the address of Turing?","1510 Black Street")
card_4 = Card.new("When was Fat Boy dropped?", "August 6th, 1945")
card_5 = Card.new("Where is the Nurburgring?", "Nurburg, Germany")
card_6 = Card.new("Where was Alan Turing working during World War Two?", "Bletchy Park, England")
deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6])
round = Round.new(deck)

puts "Welcome! You are playing with #{deck.count} cards.
_________________________________________________________"
sleep(2)
puts "This is card (NEED HELP HERE)out of #{deck.count}."
puts card_1.question
user_guess = gets.chomp
#need to compare user_guess with correct answer
#display next card
puts card_2.question
user_guess = gets.chomp
#iterate over the last 4 cards

puts "********************** Game over! **********************"
sleep(2)
puts "you had #{guesses} correct guess out of #{deck.count} for a score of #{percent_correct}"
