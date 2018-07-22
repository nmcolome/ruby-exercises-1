class Door
  attr_reader :lock
  def initialize
    @lock = true
  end

  def locked?
    @lock
  end

  def unlock
    @lock = false
  end
end