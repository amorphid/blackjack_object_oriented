require "spec_helper"

describe Game do
  describe "#initialize" do
    it "should create a player" do
      player = Game.new.player

      expect(player).to be_a(Player)
    end
  end
end
