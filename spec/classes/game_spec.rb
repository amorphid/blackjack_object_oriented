require "spec_helper"

describe Game do
  let(:game) { Game.new }

  describe "#cards" do
    it "should have 52 cards" do
      cards = game.cards

      expect(cards.count).to eq(52)
    end
  end

  describe "#player" do
    it "should be 'player'" do
      player = game.player

      expect(player).to eq("player")
    end
  end

  describe "#dealer" do
    it "creates a dealer" do
      dealer = game.dealer

      expect(dealer).to eq("dealer")
    end
  end

  it "deals two cards to everyone" do
    pending
  end

  it "let's player take turn" do
    pending
  end

  it "let's player hit when less than 21" do
    pending
  end

  it "let's dealer take turn if player doesn't bust" do
    pending
  end

  it "determines the winner" do
    pending
  end
end
