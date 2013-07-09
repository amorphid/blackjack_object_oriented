require_relative "card"

class Deck
  def initialize
    @cards = []
    52.times { @cards << Card.new }
  end

  def cards
    @cards
  end

  def shuffle
    @cards.shuffle
  end
end
