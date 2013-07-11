# require "spec_helper"

# describe Deck do
#   let(:deck) { Deck.new }
#   let(:cards) { deck.cards }

#   describe "#cards" do
#     it "should be an Array" do
#       expect(cards).to be_a(Array)
#     end

#     it "should contain 52 Card objects" do
#       expect(cards.count).to eq(52)
#     end

#     it "should contain be 52 unique objects" do
#       expect(cards.uniq).to eq(cards)
#     end
#   end

#   describe "#ranks" do
#     it "should be an array with 2 through Ace" do
#       expect(deck.ranks).to eq(
#         ["2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A"]
#       )
#     end
#   end

#   describe "#shuffle" do
#     it "should NOT shuffle the cards permanently" do
#       before = deck.cards
#       deck.shuffle
#       after = deck.cards

#       expect(before).to eq(after)
#     end
#   end

#   describe "#shuffle!" do
#     it "should shuffle the cards permanently" do
#       before = deck.cards
#       deck.shuffle!
#       after = deck.cards

#       expect(before).not_to eq(after)
#     end
#   end

#   describe "#suits" do
#     it "should have clubs, diamonds, hearts, and spades" do
#       expect(deck.suits).to eq(["C", "D", "H", "S"])
#     end
#   end
# end
