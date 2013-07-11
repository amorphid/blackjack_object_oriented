class Game
  attr_reader :cards,
              :player

  def initialize
    @cards  = [nil] * 52
    @player = "player"
  end
end
