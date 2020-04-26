require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# puts "Test the add method"
# calculator = Calculator.new
# if calculator.add(1, 1) == 2
#   puts "Test passed!"
# else
#   puts "Test failed!"
# end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 4)
      expect(result).to eq(5)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -4)
      expect(result).to eq(-3)
    end
  end

  describe "#square" do
    it "should return the number times itself" do
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end
  end
end
