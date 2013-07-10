require "spec_helper"

describe Player do
  describe "#hand" do
    it "should" do
      hand = Hand.new
      count = hand.count

      expect(count.count).to eq(2)
    end
  end
end
