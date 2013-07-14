class Player
  attr_reader :hand

  def initialize
    @hand = Hand.new
  end

  def hit(dealer, n = 1)
    n_cards = dealer.deal(n)
    @hand.add_cards(n_cards)
  end

  def may_hit?
    @hand.value < 21 ? true : false
  end
end
