class Deck
  attr_reader :blackjack,
              :cards,
              :shuffle

  def initialize
    @cards = []
    blackjack
  end

  def blackjack
    ranks.product(suits).each do |rank, card|
      @cards << Card.new(rank, card)
    end
  end

  def draw(n)
    n_cards = []
    n.times { n_cards << @cards.pop }
    n_cards
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
