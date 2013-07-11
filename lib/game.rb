class Game
  attr_reader :deck,
              :hands

  def initialize
    @deck   = Deck.new
    @hands  = [
      Hand.new,
      Hand.new(dealer: true)
    ]
  end
end
