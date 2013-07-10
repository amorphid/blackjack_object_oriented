require "hand"

describe Hand do
  describe "#count" do
    it "should be contain 2 Card objects" do
      hand = Hand.new
      count = hand.count
      card_objects = count.select { |i| i.is_a? Card }

      expect(card_objects.count).to eq(2)
    end
  end
end
