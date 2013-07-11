class Game
  attr_reader :dealer,
              :player

  def initialize
    @dealer = Dealer.new
    @player = Player.new
  end
end
