class Hanoi

    attr_reader :towers

    def initialize        
        @towers = [[8, 7, 6, 5, 4, 3, 2, 1] , [] ,[]]
    end

    def move(from, to)
        @towers[to].push(@towers[from].pop)
    end









end