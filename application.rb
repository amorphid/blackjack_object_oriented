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
    @player.dealer = @dealer
    @player.hand
    @player.hit(2)
    run
  end

  def dealer_turn
    while @dealer.may_hit?
      @dealer.hit if @dealer.hand.value < 17
    end
  end

  def player_turn

    while @player.may_hit?
      @player.hand.show
      puts
      print "Would you like to 1) Hit or 2) Stand?"

      case gets.chomp
      when "1" then @player.hit
      when "2" then break
      else          puts "Invalid selection"
      end
    end
  end

  def run
    player_turn
    dealer_turn

    puts "Player:  #{@player.hand.value}"
    puts "Dealer:  #{@dealer.hand.value}"
  end
end

Application.new


# dealer = Dealer.new
# puts dealer.hand.show

# player = Player.new
# puts player.dealer = dealer
# player.hand
# player.hit(2)
# puts player.hand.cards
