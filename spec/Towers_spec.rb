require "rspec"
require "Hanoi"

describe "Hanoi" do
    let(:hanoi){Hanoi.new}
    describe "initialize" do
        it "sets the towers up" do
            expect(hanoi.towers[0]).to eq([8, 7, 6, 5, 4, 3, 2, 1])
            expect(hanoi.towers[1]).to eq([])
            expect(hanoi.towers[2]).to eq([])
        end
    end

    describe "#move" do
        it "moves last element from one tower to another" do
            hanoi.move(0, 1)
            expect(hanoi.towers[1]).to eq([1])
        end

        it "doesn't move if one element is greater than another" do
            hanoi.towers[2] = [5,4,3]
            hanoi.towers[1] = [6]
            
            expect{hanoi.move(1,2)}.to raise_error(StandardError)
        end

        #check to see if pushing to empty array is an issue
        it "works properly when you move to an empty array" do
            hanoi.move(0, 2)
            expect(hanoi.towers[2]).to eq([1])
        end
        
        #taking from an empty should raise error
        it "works properly when you move from an empty array" do
            expect{hanoi.move(1,2)}.to raise_error(StandardError)
        end
        #
    end

    describe "#won?" do
        it "checks if you won" do 
            hanoi.towers[2] = [8,7,6,5,4,3,2,1]
            expect(hanoi.won?).to eq(true)
        end

        # returns false if you have not yet won
    end
end