require "spec_helper"

describe Game do
  let(:game) { Game.new }

  describe "#deck" do
    it "should have a deck" do
      deck = game.deck

      expect(deck).to be_a(Deck)
    end
  end

  describe "#hands" do
    it "should have 2 hands" do
      hands = game.hands
      count = hands.select { |i| i.is_a? Hand }.count

      expect(count).to eq(2)
    end
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
