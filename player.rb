class Player
  attr_accessor :dealer
  attr_reader   :hand, :hit
  attr_writer   :dealer

  def hand
    @hand ||= Hand.new
  end

  def hit(n = 1)
    n_cards = @dealer.deal(n)
    @hand.add_cards(n_cards)
  end

  def may_hit?
    @hand.value < 21 ? true : false
  end
end
