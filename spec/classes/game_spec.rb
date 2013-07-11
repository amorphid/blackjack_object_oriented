require "spec_helper"

describe Game do
  let(:game) { Game.new }

  it "creates a deck of cards" do
    cards = game.cards

    expect(cards.count).to eq(52)
  end

  it "creates a player" do
    player = game.player

    expect(player).to eq("player")
  end

  it "creates a dealer" do
    pending
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
