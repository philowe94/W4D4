require 'rspec'
require "Deck"

describe "DECK" do
    let(:deck) { Deck.new }

    allowed_methods = [:shuffle]

    describe "#initialize" do
        it "should contain a deck" do
            expect(deck.deck.all? {|card| card.is_a?(Card)}).to eq(true)
            expect(deck.deck.length).to eq(52)
        end

        it "should have a shuffled deck" do
            allow(deck.deck).to receive(:shuffle)        
        end       
    end

    describe "#populate_deck" do
        it "should populate the deck with each possible combination of suit and rank once" do
            expect(deck.deck).to eq(deck.deck.uniq)
        end
    end
end



    