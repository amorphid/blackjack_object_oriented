require "./hand"
require "./card.rb"
require "./deck.rb"
require "./player.rb"
require "./dealer.rb"


class Application
  attr_reader :dealer, :player

  def initialize
    @dealer = Dealer.new
    @player = Player.new
    @dealer.deal(@player, 2)
  end
end
