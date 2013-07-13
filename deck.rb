require "./card.rb"

class Deck
  attr_reader :blackjack,
              :shuffle

  def initialize
    @cards = []
  end

  def blackjack
    ranks.product(suits).each do |rank, card|
      @cards << Card.new(rank, card)
    end

    @cards
  end

  def ranks
    "2".upto("9").to_a + ["T", "J", "Q", "K", "A"]
  end

  def shuffle
    @cards.shuffle
  end

  def shuffle!
    @cards = shuffle.dup!
  end

  def suits
    ["C", "D", "H", "S"]
  end
end
