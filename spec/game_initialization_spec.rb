require "game"

describe Game do
  describe "#initialize" do
    let(:deck) { Deck.new.shuffle }

    it "should create a shuffled Deck" do
      expect(deck.count).to eq(52)
    end

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
