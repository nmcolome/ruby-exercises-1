class MilkBottle
  attr_reader :full

  def initialize
    @full = true
  end

  def full?
    @full
  end

  def spill
    @full = false
  end
end