require_relative "card"

class Deck
  attr_reader :cards

  def initialize()
    @cards = []
    52.times { @cards << Card.new }
  end
end
