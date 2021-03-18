# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

class Array

    def my_uniq
        newArray = []
        self.each do |ele|
            if !newArray.include?(ele)
                newArray << ele
            end
        end

        newArray       
    end

    def two_sum
        newArray = []

        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1
                    if ele2 + ele1 == 0
                        newArray << [idx1, idx2]
                    end
                end
            end
        end

        return newArray
    end

    def my_transpose
        newArray = []

        newArray = self.transpose
        newArray
    end

    def stock_picker
        newArray = []
        diff = 0
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1
                    if ele2 - ele1 > diff
                        newArray = [idx1, idx2]
                        diff = ele2 - ele1
                    end
                end
            end
        end

        return newArray
    end
end




# [1, 2, 1, 3, 3].uniq

# Write your own version of this method called my_uniq; it should take in an Array and return a new array.

# [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
