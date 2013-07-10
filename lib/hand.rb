require_relative "card"

class Hand
  def initialize
    @cards = [Card.new(2,2), Card.new(2,2)]
  end

  def count
    @cards
  end
end
