require_relative './person'

class Student < Person
  attr_accessor :parent_permission

  def initialize(classroom, age, name, parent_permission)
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
