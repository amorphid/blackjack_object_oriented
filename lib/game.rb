class Game
  attr_reader :cards,
              :hands

  def initialize
    @cards  = ["card"] * 52
    @dealer = true
    @hands  = [Hand.new, Hand.new(dealer: @dealer)]
  end
end
