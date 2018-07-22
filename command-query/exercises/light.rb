class Light
  attr_reader :on

  def initialize
    @on = false
  end

  def on?
    @on
  end

  def turn_on
    @on = true
  end
end