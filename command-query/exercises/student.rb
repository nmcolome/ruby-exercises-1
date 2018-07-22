class Student
  attr_reader :grade

  GRADES = ["A", "B", "C", "D", "F"]

  def initialize
    @grade = 'C'
  end

  def study
    new_index = GRADES.rindex(@grade).pred
    @grade = new_index <= 0 ? "A" : GRADES[new_index]
  end

  def slack_off
    new_index = GRADES.rindex(@grade).succ
    @grade = new_index >= 4 ? "F" : GRADES[new_index]
  end
end