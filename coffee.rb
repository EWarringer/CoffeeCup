class Coffee
  attr_accessor :capacity, :amount
  def initialize
    @capacity = 12
    @amount = 8
  end

  def sip!
    @amount -= 1 if amount >= 1
    return "you need to refill your cup!" if amount < 1
  end

  def spill!
    @amount = 0
  end

  def refill!
    @amount = 8
  end
end
