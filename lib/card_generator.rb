class CardGenerator
  attr_reader :filename, :cards

  def initialize(filename)
    @filename = filename
    @cards = []
    create_cards(filename)
  end

  def create_cards(filename)
    @cards = File.readlines(filename).map do |line|
      question, answer =  line.split(", ")
      Card.new(question, answer)
    end
  end
end
