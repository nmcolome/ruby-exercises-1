class Clock
  attr_reader :time

  def initialize
    @time = 6
  end

  def wait
    @time > 11 ? @time -= 11 : @time += 1
  end
end