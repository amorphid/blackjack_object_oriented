class Player
  attr_reader :hand

  def initialize
    @hand = Hand.new
  end

  def hand(deck)
    @hand = Hand.new
  end
end
