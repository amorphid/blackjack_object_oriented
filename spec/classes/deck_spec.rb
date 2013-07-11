require "spec_helper"

class Deck
  describe "#cards" do
    it "should have 52 cards" do
      deck  = Deck.new
      cards = deck.cards
      count = cards.select { |i| i.eql? "card" }.count

      expect(count).to eq(52)
    end
  end
end
