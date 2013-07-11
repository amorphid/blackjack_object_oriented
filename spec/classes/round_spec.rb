require "spec_helper"

describe Round do
  describe "#initialize" do
    it "should create a Deck" do
      round = Round.new

      expect(round.deck).to be_a(Deck)
    end
  end
end
