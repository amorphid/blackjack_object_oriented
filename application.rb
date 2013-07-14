require "./hand"
require "./card.rb"
require "./deck.rb"
require "./player.rb"
require "./dealer.rb"
# require "./turn.rb"
require "./table.rb"

class Application
  def initialize
    @dealer = Dealer.new
    @player = Player.new
    @player.hit(@dealer, 2)
    run
  end

  def dealer_turn
    while @dealer.may_hit? && @dealer.hand.value < 17
      @dealer.hit(@dealer)
    end
  end

  def player_choice(input = gets.chomp)
    input
  end

  def run
    player_turn
    dealer_turn if @player.hand.value < 22
    results
  end

  def player_turn()
    choice = "1"

    while @player.may_hit? && choice == "1"
      Table.new(@dealer, @player).choices
      choice = player_choice
      @player.hit(@dealer) if choice == "1"
    end
  end

  def results
    Table.new(@dealer, @player).results
  end
end

Application.new
