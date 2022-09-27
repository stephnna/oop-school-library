require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name)
    super(age, name)
    @specialization = specialization
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
