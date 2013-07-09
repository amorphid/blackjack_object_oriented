require_relative "deck"

class Game
  def initialize
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def dealer
    @dealer
  end

  def deck
    @deck
  end
end
