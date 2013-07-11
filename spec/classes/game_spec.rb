require "spec_helper"

describe Game do
  let(:game) { Game.new }

  describe "#cards" do
    it "should have 52 cards." do
      cards = game.cards
      count = cards.select { |i| i.eql? "card" }.count

      expect(count).to eq(52)
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
