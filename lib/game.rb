class Game
  attr_reader :cards,
              :dealer,
              :hands

  def initialize
    @cards  = ["card"] * 52
    @player = "player"
    @dealer = "dealer"
    @hands  = [Hand.new("player"), Hand.new("player")]
  end
end
