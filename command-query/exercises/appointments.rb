class Appointments
  def initialize
    @slots = []
  end

  def earliest
    @slots.empty? ? nil : Time.at(@slots.min)
  end

  def at(time)
    @slots << time.to_i
  end
end