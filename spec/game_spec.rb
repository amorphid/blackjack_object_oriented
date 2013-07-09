require "game"

describe Game do
  let(:game) { Game.new}

  describe "#deck" do
    let(:deck) { game.deck }

    it "should be an Deck" do
      expect(deck.class).to eq(Deck)
    end

    it "should be shuffled" do
      # pending
    end
  end

  describe "to be implemented" do
    it "should create a Player" do
    end

    it "should create a Dealer" do
    end

    it "should give Player a hand with two cards." do
    end

    it "should give Dealer a hand with two cards" do
    end
  end
end
