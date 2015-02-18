require "spec_helper"
require "./happynumber"

describe HappyNumber do
    
    before(:each) do
        @input = 19
        @happyNumber = HappyNumber.new(@input)
    end

    describe "checkNumber" do
        it "should be true" do
            @happyNumber.checkNumber.should be_truthy 
        end
    end

    describe "separateNumber" do
        it "should be an array of numbers" do
            @happyNumber.separateNumber(@input).should == [1, 9]
        end
    end

    describe "squareNumber" do
        it "should be an array of numbers^2" do
            @happyNumber.squareNumber([1, 9]).should == [1, 81]
        end
    end

    describe "addNumbers" do
        it "should be a number" do
            @happyNumber.addNumbers([1, 81]).should == 82
        end
    end

    describe "checkHappy" do
        it "should be 1" do
            @happyNumber.checkHappy(1).should be_truthy
        end
    end
end