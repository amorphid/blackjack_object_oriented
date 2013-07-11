class Game
  attr_reader :dealer,
              :deck,
              :player

  def initialize
    @dealer = Dealer.new
    @deck   = Deck.new
    @player = Player.new
    @deck.shuffle!
  end

  def deal_first_hand
    2.times { puts @player.hand.cards << @deck.cards.pop }
    2.times { @player.hand.cards << @deck.cards }
  end
end

