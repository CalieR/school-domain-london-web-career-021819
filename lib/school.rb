# code here!
require 'pry'
# School class is a model in domain context
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if roster.has_key?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    if roster.has_key?(grade)
      roster[grade]
    end
  end

  def sort
    # iterate over roster
     roster[grade].transform_values { |arr| arr.sort }
    # roster[grade].sort
  end

# binding.pry

end
