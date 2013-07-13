class Hand
  attr_reader :cards
  attr_writer :add_cards

  def initialize
    @cards = []
  end

  def add_cards(n_cards)
    n_cards.each { |card| @cards << card }
  end

  def show
    puts "Your hand:"
    @cards.each do |card|
      puts " " + card.face
    end
    puts "Value: #{value}"
  end

  def value
    sum = 0
    @cards.each { |card| sum += card.value }
    sum
  end
end
