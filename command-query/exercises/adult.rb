class Adult
  def initialize
    @sober = true
    @alcohol_count = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @alcohol_count += 1
    @sober = @alcohol_count > 2 ? false : true
  end
end