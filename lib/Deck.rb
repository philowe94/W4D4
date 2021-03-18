require_relative "Card.rb"

SUITS = ["DIAMOND", "HEART", "CLUB", "SPADE"].freeze
RANK = [ "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"].freeze

class Deck

    attr_reader :deck

    def initialize

        @deck = []
        populate_deck
        shuffle
        # p @deck

    end

    def draw
        @deck.pop
    end

    def shuffle        
        @deck.shuffle
    end


    private

    def populate_deck
        SUITS.each do |suit|
            RANK.each do |rank|
                @deck << Card.new(suit, rank)
            end
        end
    end


end