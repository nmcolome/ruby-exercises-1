class Money
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn(money)
    @amount += money
  end

  def spend(money)
    if money > @amount
      "You can't spend what you don't have"
    else
      @amount -= money
    end
  end
end 