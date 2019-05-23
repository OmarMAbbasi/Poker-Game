class Deck
  def initialize
    @deck = deck_factory
  

  end

  def deck_factory
    factory = []
    (1..13).each do |val|
      factory << Hearts.new(val)
      factory << Spades.new(val)
      factory << Diamonds.new(val)
      factory << Clubs.new(val)
    end
    return factory

  end
end