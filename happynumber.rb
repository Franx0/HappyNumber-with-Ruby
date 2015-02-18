require 'pry'

class HappyNumber
    def initialize(input)
        @input = input
        checkNumber
    end

    def checkNumber
        if @input.is_a? Integer
            separateNumber(@input)
        else
            puts "It's a #{@input.class}"
        end
    end

    def separateNumber(numbers)
        arNumbers = numbers.to_s.split(//).map{ |x| x.to_i }
        squareNumber(arNumbers)
        return arNumbers
    end

    def squareNumber(arrayNumbers)
        arNumSquare = arrayNumbers.map{ |y| y**2 }
        addNumbers(arNumSquare)
        return arNumSquare
    end

    def addNumbers(sum)
        number = sum.inject{ |sum, z| sum += z }
        checkHappy(number)
        return number
    end

    def checkHappy(number)
        if number == 1
            puts "It's a happy number"
            return 1
        else
            separateNumber(number)
        end
    end
end

HappyNumber.new(19)
