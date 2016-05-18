




File.readlines('card.txt').map do |line|
  question, answer =  line.split(", ")
  card = Card.new(question, answer)
  end
