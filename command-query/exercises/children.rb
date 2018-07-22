require_relative 'child'

class Children
  def initialize
    @all = []
  end

  def eldest
    @all.max_by do |child|
      child.age
    end
  end

  def << (child)
    @all << child
  end
end