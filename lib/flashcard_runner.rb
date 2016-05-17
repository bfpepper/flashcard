require "./lib/flashcard"
require "./lib/sorting_cards"
require "./lib/guess"
require "./lib/round"

card_1 = Card.new("When did Lamborghini become a business?", "May, 1963")
card_2 = Card.new("Who discovered blood types?", "Karl Landsteiner")
card_3 = Card.new("What is the address of Turing?","1510 Black Street")
card_4 = Card.new("When was Fat Boy dropped?", "August 6th, 1945")
card_5 = Card.new("Where is the Nurburgring?", "Nurburg, Germany")
deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
round = Round.new(deck)

puts "Welcome! You are playing with 5 cards."
