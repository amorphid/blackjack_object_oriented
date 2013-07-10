require_relative "deck"
require_relative "player"

class Game
  attr_reader :dealer,
              :deck,
              :player

  def initialize
    @dealer = Dealer.new
    @deck   = Deck.new
    @player = Player.new
  end
end
