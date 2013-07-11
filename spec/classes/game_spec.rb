require "spec_helper"

describe Game do
  describe "#initialize" do
    it "should create a player" do
      player = Game.new.player

      expect(player).to be_a(Player)
    end

    it "should create a dealer" do
      dealer = Game.new.dealer

      expect(dealer).to be_a(Dealer)
    end
  end
end
