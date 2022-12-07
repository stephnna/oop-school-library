require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0..9] if @nameable.correct_name.size > 10
  end
end
