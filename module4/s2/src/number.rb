
class Number
    def initialize(numbers)
        @numbers = numbers
    end

    # def increment
    #     @numbers
    # end

    def increment
        @numbers.map { |n| n+1 }
    end
end