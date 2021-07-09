class Calculator
    def add(num1, num2)
        num1 + num2
    end
end

calculator = Calculator.new

integer = calculator.add(1,2)
puts integer

double = calculator.add(1.23, 5.44)
puts double

string = calculator.add("1.22", "2.45")
puts string
