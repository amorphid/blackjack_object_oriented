require_relative "deck"
require_relative "player"

class Game
  def initialize
    @dealer = Dealer.new
    @deck   = Deck.new
    @player = Player.new
  end

  def dealer
    @dealer
  end

  def deck
    @deck
  end

  def player
    @player
  end
end
