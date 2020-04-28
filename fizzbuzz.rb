require "rspec"
# Print out the numbers 1 through 100
# Except instead of any multiple of 3, print FIZZ
# Except instead of any multiple of 5, print BUZZ
# Except instead of any multiple of 3 and 5, print FIZZBUZZ
class Fizzbuzz
  def output(number)
    return "FIZZBUZZ" if number % 15 == 0
    return "FIZZ" if number % 3 == 0
    return "BUZZ" if number % 5 == 0
    return number
  end

  def run
    index = 1
    while index <= 100
      puts output(index)
      index += 1
    end
  end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.run

RSpec.describe Fizzbuzz do
  describe "#output" do
    it "should return 1 if given 1" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.output(1)
      expect(result).to eq(1)
    end

    it "should return 2 if given 2" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.output(2)
      expect(result).to eq(2)
    end

    it "should return FIZZ if given 3" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.output(3)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 5" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.output(5)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZ if given 6" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.output(6)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 10" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.output(10)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZBUZZ if given 15" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.output(15)
      expect(result).to eq("FIZZBUZZ")
    end
  end
end
