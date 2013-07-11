class Game
  def initialize
    @deck   = Deck.new
    @player = Player.new
    @dealer = Dealer.new
    @deck.shuffle!
  end
end

