require_relative "Card.rb"

SUITS = ["DIAMOND", "HEART", "CLUB", "SPADE"].freeze
RANK = [ "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"].freeze

class Deck

    attr_reader :deck, :discard

    def initialize
        @deck = Deck.populate_deck
        shuffle
        @discard = []
    end

    def draw
        @deck.pop
    end

    def shuffle        
        @deck.shuffle
    end

    def burn
        @discard << @deck.pop
    end

    private

    def self.populate_deck
        shuffled_deck = []
        SUITS.each do |suit|
            RANK.each do |rank|
                shuffled_deck << Card.new(suit, rank)
            end
        end
        return shuffled_deck
    end


end