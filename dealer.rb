class Dealer < Player
  def initialize
    @deck = Deck.new
    @deck.shuffle!
    deal(self, 2)
  end

  def deal(player, n = 1)
    hand       = player.hand
    hand.cards = hand.cards + @deck.draw(n)
  end
end
