require "rspec"

class ChangeMachine
  def convert_value_to_coins(value)
    denominations = [25, 10, 5, 1]
    coins = []
    denominations.each do |denomination|
      while value >= denomination
        coins << denomination
        value = value - denomination
      end
    end
    coins
  end
end

RSpec.describe ChangeMachine do
  describe "#convert_value_to_coins" do
    it "should return [1] when given 1" do
      machine = ChangeMachine.new
      result = machine.convert_value_to_coins(1)
      expect(result).to eq([1])
    end

    it "should return [1, 1] when given 2" do
      machine = ChangeMachine.new
      result = machine.convert_value_to_coins(2)
      expect(result).to eq([1, 1])
    end

    it "should return [5] when given 5" do
      machine = ChangeMachine.new
      result = machine.convert_value_to_coins(5)
      expect(result).to eq([5])
    end

    it "should return [10] when given 10" do
      machine = ChangeMachine.new
      result = machine.convert_value_to_coins(10)
      expect(result).to eq([10])
    end

    it "should return [25] when given 25" do
      machine = ChangeMachine.new
      result = machine.convert_value_to_coins(25)
      expect(result).to eq([25])
    end

    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119" do
      machine = ChangeMachine.new
      result = machine.convert_value_to_coins(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
