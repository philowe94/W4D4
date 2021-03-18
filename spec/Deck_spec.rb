require 'rspec'
require "Deck"

describe "DECK" do
    let(:deck) { Deck.new }

    allowed_methods = [:shuffle]

    describe "#initialize" do
        it "should contain a deck" do
            #break these out
            expect(deck.deck.all? {|card| card.is_a?(Card)}).to eq(true)
            expect(deck.deck.length).to eq(52)
        end

        it "should have a shuffled deck" do
            allow(deck.deck).to receive(:shuffle)        
        end

        it "should not contain duplicates" do
            expect(deck.deck).to eq(deck.deck.uniq)
        end

        it "should have an empty discard pile" do
            expect(deck.discard).to eq([])
        end
    end

    describe "#burn" do
        it "takes top card and puts it in discard pile" do
            deck.burn
            expect(deck.discard.length).to_not eq(0)
        end
    end




    #test draw and shuffle before writing them

    #return to bottom of deck

    #deal cards


    # populate deck should be class method
    # should not be part of spec cause its not an endpoint

    # describe "#populate_deck" do
    #     it "should populate the deck with each possible combination of suit and rank once" do
    #         expect(deck.deck).to eq(deck.deck.uniq)
    #     end
    # end
end



    