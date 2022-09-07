require_relative './base_decorator'

class TrimmerDecorator < NameableBaseDecorator
  def correct_name
    user_name = @nameable.correct_name
    user_name[0...10]
  end
end
