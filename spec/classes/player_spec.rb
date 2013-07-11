require "spec_helper"

describe Player do
  describe "#hand" do
    it "should" do
      deck   = Deck.new
      player = Player.new

      expect(player.hand(deck)).to be_a(Hand)
    end
  end
end
