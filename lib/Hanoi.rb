class Hanoi

    attr_accessor :towers

    def initialize        
        @towers = [[8, 7, 6, 5, 4, 3, 2, 1] , [] ,[]]
    end
    
    def move(from, to)
        if @towers[from].empty?
            raise "You cannot take something from an empty array"
        elsif @towers[to].empty?
            @towers[to].push(@towers[from].pop)
        elsif  @towers[from][-1] < @towers[to][-1]
            @towers[to].push(@towers[from].pop)
        else
            raise "Cannot move something bigger on top of something smaller"
        end
    end

    def won?
        return @towers[2] == [8,7,6,5,4,3,2,1]
    end

    def turn
        render
        print " Please enter the index of the tower you want to take from: "
        input = gets.chomp
        print " Please enter the index of the tower you want to push to: "
        input2 = gets.chomp
        move(input.to_i, input2.to_i)

    end

    def render
        print @towers
    end

    def play
        until won?
            turn
        end
    end
end

# hanoi = Hanoi.new
# hanoi.play