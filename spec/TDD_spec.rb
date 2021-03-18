require 'rspec'
# require "byebug"
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

describe "#my_transpose" do
    it "transposes a matrix" do
        array = [[0, 1, 2],
                 [3, 4, 5],
                 [6, 7, 8]]
        cols = [[0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]]
        expect(array.my_transpose).to eq(cols)
    end
end

describe "#stock_picker" do
    it "finds max and min" do
        array = [278, 834, 123, 474, 847]
        newArray = [2, 4]
        expect(array.stock_picker).to eq(newArray)
    end
end

