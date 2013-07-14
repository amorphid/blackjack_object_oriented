require "./hand"
require "./card.rb"
require "./deck.rb"
require "./player.rb"
require "./dealer.rb"
require "./turn.rb"

class Application
  def initialize
    @dealer = Dealer.new
    @player = Player.new
    @player.hit(@dealer, 2)
    run
  end

  def run
    Turn.new(@dealer, @player)
    Turn.new(@dealer, @dealer) unless @player.bust?

    puts "Player:  #{@player.hand.value}"
    puts "Dealer:  #{@dealer.hand.value}"
  end
end

Application.new
