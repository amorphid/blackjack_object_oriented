require "spec_helper"

describe Hand do

  describe "#player" do
    it "should be 'player'" do
      hand   = Hand.new("player")
      player = hand.player

      expect(player).to eq("player")
    end
  end
end
