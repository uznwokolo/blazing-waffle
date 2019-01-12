
class Calculator
    def add(a, b)
        return a + b
    end

    def divide(a, b)
        return a / b
    end

    def subtract(a, b)
        return a - b
    end

    def multiply(a, b)
        return a * b
    end

    def squared(a)
        return a * a
    end

    def cubed(a)
        return a ** 3
    end
end

Addition = lambda { |a, b| return a + b } 
Subtraction = lambda { |a, b| return a - b } 
Multiplication = lambda { |a, b| return a * b } 
Division = lambda { |a, b| return a / b} 

puts Addition.call(2,3)
puts Division.call(12,3)

#puts Calculator.new.add(1,2)
#puts Calculator.new.multiply(3,5)
#puts Calculator.new.cubed(4)
#puts Calculator.new.squared(6)



