require 'card.rb'
require 'clubs.rb'
require 'deck.rb'
require 'diamonds.rb'
require 'discard.rb'
require 'hearts.rb'
require 'player.rb'
require 'poker.rb'
require 'spades.rb'


RSpec.describe Deck do
  subject(:deck) {Deck.new}
  let(:@deck) {(1..52).to_a}
  # let(:ace_hearts) {double("ace_hearts", 1)}
  # let(:four_hearts) {double("four_hearts", 4)}
  # let(:six_hearts) {double("six_hearts", 6)}
  describe "#initialize" do
    context "At the start of a new game" do
      it "creates an empty array @deck" 

      it "calls #deck_factory populates the deck"

      
      it "shuffles the deck" do
        old_deck = @deck.dup
        expect(@deck).to_not eq(old_deck)
      end

    end
  end
  describe "#draw" do 
    it "draws a card from the top of the deck" do
      expect(@deck.pop).to eq(1..51).to_a
    end
  end
  describe "#pull from discard" do
    let(:discard) {double("discard", :discard_cards => (1..12).to_a}
    context "when deck is empty" do
      it "pull remaining cards from discard pile" do
        discard_dups = discard.dup
        expect(deck).to eq(discard_dups)
      end
      it ""
    end
  end
end