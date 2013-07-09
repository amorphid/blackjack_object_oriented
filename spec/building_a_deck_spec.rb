require "deck"

describe Deck do
  let(:cards) { Deck.new.cards }

  describe "#cards" do
    it "should be an Array" do
      expect(cards).to be_a(Array)
    end

    it "should have 52 Card objects" do
      card_objects = cards.select { |i| i.is_a? Card }

      expect(card_objects.count).to eq(52)
    end
  end
end