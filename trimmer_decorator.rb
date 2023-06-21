class TrimmerDecorator < Decorator
  def correct_name
    trimmed_name = super.correct_name
    trimmed_name.length > 10 ? trimmed_name[0...10] : trimmed_name
  end
end
