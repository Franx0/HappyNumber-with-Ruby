require 'pry'

class HappyNumber
    def initialize(input)
        @input = input
        @counter = 0
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

        if @counter <= 25
            @counter += 1
            arNumbers = numbers.to_s.split(//).map{ |x| x.to_i }
            squareNumber(arNumbers)
            return arNumbers
        else
            puts "It's not a happy number"
        end
    end

    def squareNumber(arrayNumbers)
        arNumSquare = arrayNumbers.map{ |y| y**2 }
        addNumbers(arNumSquare)
        return arNumSquare
    end

    def addNumbers(sumArNumbers)
        solution = sumArNumbers.inject{ |sum, z| sum += z }
        checkHappy(solution)
        return solution
    end

    def checkHappy(number)
        if number === 1 
            puts "It's a happy number"
            return 1
        else
            separateNumber(number)
        end
    end
end

HappyNumber.new(19)
