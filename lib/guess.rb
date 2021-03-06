require './lib/flashcard'

class Guess
  attr_reader :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def response
    @guess
  end

  def correct?
    @guess == card.answer
  end

  def feedback
    if correct?
      "Correct! You're so smart."
    else
      "That is not correct."
    end
  end

end
