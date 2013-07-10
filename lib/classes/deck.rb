class Deck
  attr_reader :cards

  def initialize
    @cards = []
    build
  end

  def build
    ranks.product(suits).each do |rank, suit|
      @cards << Card.new(rank, suit)
    end
  end

  def ranks
    "2".upto("9").to_a + ["T", "J", "Q", "K", "A"]
  end

  def shuffle
    @cards.shuffle
  end

  def shuffle!
    @cards = shuffle.dup
  end

  def suits
    ["C", "D", "H", "S"]
  end
end
