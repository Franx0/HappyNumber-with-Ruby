require "spec_helper"
require "./happynumber"

describe HappyNumber do
    input = 19
    describe "checkNumber" do
        it "should be true" do
            happyNumber = HappyNumber.new(input)
            happyNumber.checkNumber.should be_truthy 
        end
    end

    describe "separateNumber" do
        it "should be an array of numbers" do
            happyNumber = HappyNumber.new(input)
            happyNumber.separateNumber(input).should == [1, 9]
        end
    end

    describe "squareNumber" do
        it "should be an array of numbers^2" do
            input = [1, 9]
            happyNumber = HappyNumber.new(input)
            happyNumber.squareNumber(input).should == [1, 81]
        end
    end

    describe "addNumbers" do
        it "should be a number" do
            input = [1, 81]
            happyNumber = HappyNumber.new(input)
            happyNumber.addNumbers(input).should == 82
        end
    end

    describe "checkHappy" do
        it "should be 1" do
            input = 1
            happyNumber = HappyNumber.new(input)
            happyNumber.checkHappy(input).should be_truthy
        end
    end
end