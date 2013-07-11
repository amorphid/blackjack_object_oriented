require "spec_helper"

describe Hand do
  describe "#dealer?" do
    it "should be false by default" do
      hand = Hand.new

      expect(hand.dealer?).to eq(false)
    end

    it "should be true" do
      hand = Hand.new(dealer: true)

      expect(hand.dealer?).to eq(true)
    end
  end

  # REFACTOR ME:  before me, put cards in a deck.
  # describe "#cards" do
  #   it "should start with 2 cards" do
  #     hand  = Hand.new
  #     cards = hand.cards

  #     expect(cards.count).to eq(2)
  #   end
  # end
end
