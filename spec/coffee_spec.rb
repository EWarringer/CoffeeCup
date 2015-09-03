require_relative "../coffee.rb"
require 'pry'

RSpec.describe Coffee do
  let(:coffee) { Coffee.new }
  describe ".new" do
    it "has a maximum capacity" do
      expect(coffee.capacity).to eq(12)
    end
    it "has an amount of coffee in it" do
      expect(coffee.amount).to eq(8)
    end
  end

  describe "#sip" do
    it "subtracts 1oz of coffee when sip is taken" do
      original_amount = coffee.amount
      coffee.sip!
      expect(coffee.amount).to be < original_amount
    end

    it "states that a refill is needed if cup is empty" do
      coffee.amount = 0
      expect(coffee.sip!).to eq("you need to refill your cup!")
    end
  end

  describe "#spill!" do
    it "removes the full amount of coffee in the cup" do
      coffee.spill!
      expect(coffee.amount).to eq(0)
    end
  end

  describe "#refill!" do
    it "refills the cup of coffee to 8oz" do
      coffee.sip!
      coffee.refill!
      expect(coffee.amount).to eq(8)
    end
  end
end
