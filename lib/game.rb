class Game
  attr_reader :cards,
              :dealer,
              :hands,
              :player

  def initialize
    @cards  = [nil] * 52
    @player = "player"
    @dealer = "dealer"
    @hands  = [Hand.new, Hand.new]
  end
end
