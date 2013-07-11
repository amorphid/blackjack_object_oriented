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
end
