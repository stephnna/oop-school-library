require_relative './person'

class Student < Person
  def initialize(classroom, age, name)
    super(age, name)
    @color = classroom
  end

  def can_use_services?
    true
  end
end
