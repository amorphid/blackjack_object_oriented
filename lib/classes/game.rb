class Game
  attr_reader :player

  def initialize
    @deck   = Deck.new.shuffle!
    @player = Player.new.hand(@deck)
    @dealer = Dealer.new.hand(@deck)
  end
end
