class Game
  attr_reader :cards,
              :hands

  def initialize
    @cards  = ["card"] * 52
    @hands  = [
      Hand.new,
      Hand.new(dealer: true)
    ]
  end
end
