require "rspec"
require "Towers"

describe "#towers" do
    let(:hanoi){Hanoi.new}
    describe "initialize" do
        it "sets the towers up" do
            expect(hanoi.towers[0]).to eq([8, 7, 6, 5, 4, 3, 2, 1])
            expect(hanoi.towers[1]).to eq([])
            expect(hanoi.towers[2]).to eq([])
        end
    end

    describe "move" do
        it "moves last element from one tower to another" do
            hanoi.move(0, 1)
            expect(hanoi.towers[1]).to eq([1])
        end

    end
end