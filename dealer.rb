class Dealer < Player

  def initialize
    super
    @deck = Deck.new
    @deck.shuffle!
    hit(self, 2) # why are you hitting yourself?!
  end

  def deal(n = 1)
    @deck.draw(n)
  end
end
