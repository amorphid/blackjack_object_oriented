class Game
  attr_reader :cards,
              :dealer,
              :player

  def initialize
    @cards  = [nil] * 52
    @player = "player"
    @dealer = "dealer"
  end
end
