class Hand
  attr_reader :cards

  def initialize(dealer: false)
    @dealer = dealer
  end

  def dealer?
    @dealer
  end
end
