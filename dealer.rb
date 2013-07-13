require "./deck.rb"

class Dealer
  def initialize
    @deck = Deck.new
    @deck.shuffle!
    deal(self, 2)
  end

  def deal(player, n = 1)
    # need to implement Player#hand
  end
end
