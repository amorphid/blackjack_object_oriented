class Dealer < Player
  def initialize
    @deck = Deck.new
    @deck.shuffle!
    hand
    two_cards = @deck.draw(2)
    self.hand.add_cards(two_cards)
  end

  def deal(n = 1)
    @deck.draw(n)
  end
end
