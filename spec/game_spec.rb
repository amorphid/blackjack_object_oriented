require "game"

describe Game do
  let(:game) { Game.new }

  describe "#deck" do
    let(:deck) { game.deck }

    it "should be an Deck" do
      expect(deck).to be_a(Deck)
    end

    it "should be shuffled" do
      shuffled = deck.cards
      not_shuffled = Deck.new

      expect(shuffled).not_to eq(not_shuffled)
    end
  end

  describe "#dealer" do
    it "should create a Dealer" do
      dealer = game.dealer

      expect(dealer).to be_a(Dealer)
    end
  end

  describe "#player" do
    it "should create a Player" do
      player = game.player

      expect(player).to be_a(Player)
    end
  end

  describe "deal_first_hand" do
    it "should give Player a hand with two cards." do
      player = game.player
      hand = player.hand
      count = hand.count

      expect(count.count).to eq(2)
    end

    it "should give Dealer a hand with two cards" do

    end
  end
end
