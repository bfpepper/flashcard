require 'pry'
class CardGenerator
  attr_reader :filename, :cards

  def initialize(filename)
    @filename = filename
    @cards = []
    create_cards(filename)
  end

  def create_cards(filename)
    @cards = File.readlines("card.txt").map do |line|
      question, answer =  line.strip!.split(", ")
      Card.new(question, answer)
    end
  end
end
