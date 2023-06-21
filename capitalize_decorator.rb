class CapitalizeDecorator < Decorator
  def correct_name
    super.correct_name.capitalize
  end
end
