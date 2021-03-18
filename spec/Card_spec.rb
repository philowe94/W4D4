require 'rspec'
# require "byebug"
require "Card"

describe "Card" do    
    let(:card) { Card.new("SPADE", "A")}
    it "should initialize with suit and rank" do
        expect(card.suit).to eq("SPADE")
        expect(card.rank).to eq("A")        

        #break out expect statements into their own tests

        #maybe have visible/invisible

        #compare cards
            #card equals
            #high card checker (spaceship)
        
        #optional: class constant of card symbols
    end        
end
