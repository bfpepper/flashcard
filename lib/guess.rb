require './lib/flashcard'

class Guess

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def card
    @card
  end

  def response
    @guess
  end

  def correct?
    if @guess == card.answer
      "Correct!"
    else
      "I'm sorry. Please try again."
    end
  end

end
