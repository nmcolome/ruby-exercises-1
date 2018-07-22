class Wallet
  attr_reader :cents

  def initialize
    @cents = 0
  end

  def << coin
    @cents += money[coin]
  end

  def money
    {
      penny: 1,
      nickel: 5,
      dime: 10,
      quarter: 25,
      dollar: 100
    }
  end

  def take(*coins)
    coins.each do |coin|
      money[coin] > @cents ? @cents : @cents -= money[coin]
    end
  end
end