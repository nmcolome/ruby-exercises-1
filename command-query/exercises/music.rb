class Music
  attr_reader :high_vol

  def initialize
    @high_vol = false
  end

  def loud?
    @high_vol
  end

  def turn_up
    @high_vol = true
  end
end