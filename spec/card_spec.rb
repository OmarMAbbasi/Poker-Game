require 'card.rb'
require 'clubs.rb'
require 'deck.rb'
require 'diamonds.rb'
require 'discard.rb'
require 'hearts.rb'
require 'player.rb'
require 'poker.rb'
require 'spades.rb'


RSpec.describe Card do
  subject(:card) {Card.new(7)} 
  subject(:clubs) {Clubs.new(7)}
  subject(:diamonds) {Diamonds.new(7)}
  subject(:hearts) {Hearts.new(7)}
  subject(:spades) {Spades.new(7)}
  describe "#initializer" do
    it "Stores a value" do
      expect(card.value).to eq(7)
    end
  end
  describe "Class Query" do
    it "Is a Club Class" do
      expect(clubs).to be_a(Clubs)
    end
    it "Is a Diamond Class" do
      expect(diamonds).to be_a(Diamonds)
    end
    it "Is a Heart Class" do
      expect(hearts).to be_a(Hearts)
    end
    it "Is a Spade Class" do
      expect(spades).to be_a(Spades)
    end
  end
end
