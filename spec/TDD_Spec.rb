require 'rspec'
require "byebug"
require "TDD"

describe "#uniq" do    
    it "removes dupes" do
        array = [1, 2, 1, 3, 3]
        uniqArray = [1, 2, 3]
        expect(array.my_uniq).to eq(uniqArray)    
    end    
end

describe "#two_sum" do
    it "finds the elements where those positions sum to zero" do
        array = [-1, 0, 2, -2, 1]
        sums = [[0, 4], [2, 3]]
        expect(array.two_sum).to eq(sums)
    end
end
